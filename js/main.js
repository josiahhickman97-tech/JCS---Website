/* JCS Safety Systems — site interactions */

(function () {
  "use strict";

  const toggle = document.querySelector(".nav-toggle");
  const mobileNav = document.querySelector(".mobile-nav");

  function closeMobileNav() {
    if (!mobileNav || !toggle) return;
    mobileNav.classList.remove("open");
    toggle.setAttribute("aria-expanded", "false");
    document.body.style.overflow = "";
    mobileNav.querySelectorAll(".mob-group.open").forEach((g) => {
      g.classList.remove("open");
      const b = g.querySelector(".mob-group-toggle");
      if (b) b.setAttribute("aria-expanded", "false");
    });
  }

  // Mobile nav open/close
  if (toggle && mobileNav) {
    toggle.addEventListener("click", (e) => {
      e.stopPropagation();
      const open = mobileNav.classList.toggle("open");
      toggle.setAttribute("aria-expanded", open ? "true" : "false");
      document.body.style.overflow = open ? "hidden" : "";
      if (!open) {
        mobileNav.querySelectorAll(".mob-group.open").forEach((g) => {
          g.classList.remove("open");
          const b = g.querySelector(".mob-group-toggle");
          if (b) b.setAttribute("aria-expanded", "false");
        });
      }
    });

    // Accordion: Solutions / Industries expand only when + is tapped
    mobileNav.querySelectorAll(".mob-group-toggle").forEach((btn) => {
      btn.addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();
        const group = btn.closest(".mob-group");
        if (!group) return;
        const willOpen = !group.classList.contains("open");
        mobileNav.querySelectorAll(".mob-group.open").forEach((g) => {
          g.classList.remove("open");
          const b = g.querySelector(".mob-group-toggle");
          if (b) b.setAttribute("aria-expanded", "false");
        });
        if (willOpen) {
          group.classList.add("open");
          btn.setAttribute("aria-expanded", "true");
        }
      });
    });

    // Close menu when a real link is followed
    mobileNav.querySelectorAll("a").forEach((a) => {
      a.addEventListener("click", () => {
        closeMobileNav();
      });
    });
  }

  // Desktop dropdowns only (chevron); ignore mobile accordion buttons
  document.querySelectorAll(".nav-dropdown").forEach((dd) => {
    const btn = dd.querySelector(".nav-chevron");
    if (!btn) return;
    btn.addEventListener("click", (e) => {
      e.preventDefault();
      e.stopPropagation();
      // Skip on small screens — desktop nav is hidden
      if (window.matchMedia("(max-width: 768px)").matches) return;
      const isOpen = dd.classList.contains("open");
      document.querySelectorAll(".nav-dropdown.open").forEach((d) => {
        d.classList.remove("open");
        const b = d.querySelector(".nav-chevron");
        if (b) b.setAttribute("aria-expanded", "false");
      });
      if (!isOpen) {
        dd.classList.add("open");
        btn.setAttribute("aria-expanded", "true");
      }
    });
  });

  document.addEventListener("click", () => {
    document.querySelectorAll(".nav-dropdown.open").forEach((d) => {
      d.classList.remove("open");
      const b = d.querySelector(".nav-chevron");
      if (b) b.setAttribute("aria-expanded", "false");
    });
  });

  // Contact form → FormSubmit.co
  const form = document.getElementById("contact-form");
  if (form) {
    if (new URLSearchParams(window.location.search).get("sent") === "1") {
      const success = form.querySelector(".form-success");
      if (success) {
        success.textContent = "Thank you — your message was sent. We'll get back to you shortly.";
        success.classList.add("show");
      }
    }

    form.addEventListener("submit", async (e) => {
      e.preventDefault();
      const data = new FormData(form);
      const name = (data.get("name") || "").toString().trim();
      const email = (data.get("email") || "").toString().trim();
      const phone = (data.get("phone") || "").toString().trim();
      const service = (data.get("service") || "").toString().trim();
      const message = (data.get("message") || "").toString().trim();
      const success = form.querySelector(".form-success");
      const errorEl = form.querySelector(".form-error");
      const btn = form.querySelector('button[type="submit"]');

      if (errorEl) errorEl.classList.remove("show");
      if (success) success.classList.remove("show");

      if (!name || !email || !message) {
        if (errorEl) {
          errorEl.textContent = "Please fill in your name, email, and message.";
          errorEl.classList.add("show");
        }
        return;
      }

      if (btn) {
        btn.classList.add("loading");
        btn.disabled = true;
      }

      try {
        const res = await fetch("https://formsubmit.co/ajax/sales@jcssafetysystems.com", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
          },
          body: JSON.stringify({
            name,
            email,
            phone: phone || "—",
            service: service || "—",
            message,
            _subject: `Website inquiry${service ? " — " + service : ""} from ${name}`,
            _template: "table",
            _captcha: "false",
          }),
        });

        if (!res.ok) throw new Error("Send failed");

        if (success) {
          success.textContent = "Thank you — your message was sent. We'll get back to you shortly.";
          success.classList.add("show");
        }
        form.reset();
      } catch (err) {
        const subject = encodeURIComponent(`Website inquiry${service ? " — " + service : ""} from ${name}`);
        const body = encodeURIComponent(
          `Name: ${name}\nEmail: ${email}\nPhone: ${phone || "—"}\nService interest: ${service || "—"}\n\nMessage:\n${message}`
        );
        if (errorEl) {
          errorEl.textContent = "Could not send through the form. Opening your email app instead…";
          errorEl.classList.add("show");
        }
        window.location.href = `mailto:sales@jcssafetysystems.com?subject=${subject}&body=${body}`;
      } finally {
        if (btn) {
          btn.classList.remove("loading");
          btn.disabled = false;
        }
      }
    });
  }

  // Active nav highlight
  const path = window.location.pathname.replace(/\/$/, "") || "/";
  const page = path.split("/").filter(Boolean).pop() || "";
  document.querySelectorAll(".nav > a, .nav-parent-link, .mobile-nav > a, .mobile-nav .mob-group-link").forEach((a) => {
    const href = (a.getAttribute("href") || "").replace(/\/$/, "");
    if (!href) return;
    if (href === "/" && (path === "/" || path === "")) {
      a.classList.add("active");
    } else if (href !== "/" && path.endsWith(href.replace(/^\//, "")) || path === href) {
      a.classList.add("active");
    }
  });
})();
