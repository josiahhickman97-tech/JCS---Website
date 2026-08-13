# -*- coding: utf-8 -*-
"""Rebuild index.html to match Solutions/Industries problem-led design."""
from pathlib import Path

root = Path(__file__).resolve().parent
shell = (root / "solutions.html").read_text(encoding="utf-8")
body_idx = shell.index("<body>")
main_idx = shell.index("<main>")
footer_idx = shell.index('<footer class="site-footer">')
header = shell[body_idx:main_idx].rstrip()
footer = shell[footer_idx:]

head = r'''<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>JCS Safety Systems | Security Built for How Your Facility Runs | South Mississippi</title>
  <meta name="description" content="Security designed for real facilities in South Mississippi - AI video and LPR, access control, cabling, intrusion, and support with phone help in 24 hrs and on-site in 48." />
  <meta name="robots" content="index, follow, max-image-preview:large" />
  <meta name="author" content="JCS Safety Systems" />
  <meta name="geo.region" content="US-MS" />
  <meta name="geo.placename" content="South Mississippi" />
  <meta name="keywords" content="security systems South Mississippi, video surveillance, access control, LPR cameras, network cabling, intrusion systems, school security, retail security Mississippi" />
  <link rel="canonical" href="https://jcssafetysystems.com/" />
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="JCS Safety Systems" />
  <meta property="og:locale" content="en_US" />
  <meta property="og:title" content="JCS Safety Systems | Security Built for How Your Facility Runs" />
  <meta property="og:description" content="Security designed for real facilities in South Mississippi - AI video and LPR, access control, cabling, intrusion, and support with phone help in 24 hrs and on-site in 48." />
  <meta property="og:url" content="https://jcssafetysystems.com/" />
  <meta property="og:image" content="https://jcssafetysystems.com/assets/hero-security.jpg" />
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="JCS Safety Systems | Security Built for How Your Facility Runs" />
  <meta name="twitter:description" content="Security designed for real facilities in South Mississippi - AI video and LPR, access control, cabling, intrusion, and support with phone help in 24 hrs and on-site in 48." />
  <meta name="twitter:image" content="https://jcssafetysystems.com/assets/hero-security.jpg" />
  <link rel="icon" href="/assets/logo.png" type="image/png" />
  <link rel="apple-touch-icon" href="/assets/logo.png" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,400;0,9..40,500;0,9..40,600;0,9..40,700;1,9..40,400&family=Outfit:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="/css/styles.css" />
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "LocalBusiness",
    "@id": "https://jcssafetysystems.com/#business",
    "name": "JCS Safety Systems",
    "image": "https://jcssafetysystems.com/assets/logo.png",
    "url": "https://jcssafetysystems.com/",
    "telephone": "+1-601-337-6852",
    "email": "sales@jcssafetysystems.com",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "PMB 53 313 Telly Rd",
      "addressRegion": "MS",
      "addressCountry": "US"
    },
    "areaServed": { "@type": "AdministrativeArea", "name": "South Mississippi" },
    "description": "JCS Safety Systems designs, installs, and supports AI-powered video surveillance, access control, intrusion systems, and network cabling for facilities across South Mississippi.",
    "priceRange": "$$",
    "hasOfferCatalog": {
      "@type": "OfferCatalog",
      "name": "Security Solutions",
      "itemListElement": [
        { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Video Surveillance" } },
        { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Access Control" } },
        { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Network Cabling" } },
        { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Intrusion Systems" } },
        { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Security Installation and Support" } }
      ]
    }
  }
  </script>
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "WebSite",
    "name": "JCS Safety Systems",
    "url": "https://jcssafetysystems.com/",
    "publisher": { "@id": "https://jcssafetysystems.com/#business" }
  }
  </script>
  <meta name="google-site-verification" content="q2MnNUmAbGwjL8gBpOulNDEuHMfIPJJm5eceFNAkjpQ" />
</head>
'''

main = r'''  <main>
    <section class="hero">
      <div class="hero-grid" aria-hidden="true"></div>
      <div class="container">
        <div>
          <div class="hero-badge"><span class="dot"></span> South Mississippi security partner</div>
          <h1>Security designed for how your facility <em>actually runs</em></h1>
          <p class="hero-lead">
            A school vestibule, a retail back door, and an industrial yard are not the same problem. JCS designs video, access, cabling, and intrusion around real risks - then installs and supports systems staff will use.
          </p>
          <div class="hero-actions">
            <a href="/contact" class="btn btn-primary btn-lg">
              Free site assessment
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg>
            </a>
            <a href="#solutions" class="btn btn-secondary btn-lg">Browse solutions</a>
          </div>
          <div class="hero-stats">
            <div>
              <strong>24h</strong>
              <span>Phone support response</span>
            </div>
            <div>
              <strong>48h</strong>
              <span>On-site service window</span>
            </div>
            <div>
              <strong>AI + LPR</strong>
              <span>Alerts you can act on</span>
            </div>
          </div>
        </div>

        <div class="hero-card" aria-hidden="true">
          <div class="hero-card-header">
            <h3>Live monitoring overview</h3>
            <span class="status-live">System active</span>
          </div>
          <div class="monitor-grid">
            <div class="monitor-feed" style="background-image:url('/assets/video-surveillance.jpg')"><span>CAM 01 | Entrance</span></div>
            <div class="monitor-feed" style="background-image:url('/assets/access-control.jpg')"><span>CAM 04 | Lot</span></div>
            <div class="monitor-feed" style="background-image:url('/assets/warehouse.jpg')"><span>CAM 07 | Dock</span></div>
            <div class="monitor-feed" style="background-image:url('/assets/school-campus.jpg')"><span>CAM 12 | Vestibule</span></div>
          </div>
          <div class="alert-row">
            <span class="alert-icon">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/></svg>
            </span>
            <div>
              <strong>Person detected | East door</strong>
              <span>Just now | AI analytics</span>
            </div>
          </div>
          <div class="alert-row">
            <span class="alert-icon">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0z"/><path stroke-linecap="round" stroke-linejoin="round" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10M17 8h2a1 1 0 011 1v7"/></svg>
            </span>
            <div>
              <strong>License plate match | Lot B</strong>
              <span>2 min ago | LPR alert</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="idp-outcomes">
          <div class="idp-outcome">
            <strong>Problem-led design</strong>
            <span>We start with what goes wrong on your site - not a recycled product list.</span>
          </div>
          <div class="idp-outcome">
            <strong>One coordinated stack</strong>
            <span>Video, access, cabling, and intrusion planned together so they work as a system.</span>
          </div>
          <div class="idp-outcome">
            <strong>Support that shows up</strong>
            <span>Phone help within 24 hours. On-site within 48. Training so staff can use the tools.</span>
          </div>
        </div>
      </div>
    </section>

    <nav class="ind-jump" aria-label="On this page">
      <div class="container">
        <div class="ind-jump-track">
          <a href="#solutions">Solutions</a>
          <a href="#industries">Industries</a>
          <a href="#process">How we work</a>
          <a href="#why-jcs">Why JCS</a>
          <a href="#results">Results</a>
        </div>
      </div>
    </nav>

    <section class="section" id="solutions">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">Solutions by problem</span>
          <h2 class="section-title">Pick the pain. We design the stack.</h2>
          <p class="section-lead">Same approach as our Solutions hub - short, specific, and linked to full pages. No five-paragraph product essays on the homepage.</p>
        </div>

        <div class="ind-showcase">
          <article class="ind-panel ind-panel-feature">
            <a href="/services/video-surveillance" class="ind-panel-media" style="background-image:url('/assets/video-surveillance.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Video surveillance</span>
              <h3><a href="/services/video-surveillance">See more. Search less. Respond faster.</a></h3>
              <p class="ind-problem">Blind spots, unsearchable recordings, and motion alerts that cry wolf leave you with cameras that look good on a quote but fail when something happens.</p>
              <ul class="ind-bullets">
                <li>AI people and vehicle detection that cuts false noise</li>
                <li>LPR options for lots, gates, and approaches</li>
                <li>Cloud or on-site recording with footage you can find</li>
              </ul>
              <div class="ind-tags">
                <span>AI analytics</span>
                <span>LPR</span>
                <span>Searchable video</span>
              </div>
              <a href="/services/video-surveillance" class="card-link">Explore video surveillance <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel">
            <a href="/services/access-control" class="ind-panel-media" style="background-image:url('/assets/access-control.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Access control</span>
              <h3><a href="/services/access-control">Replace mystery keys with proof of who entered</a></h3>
              <p class="ind-problem">Copied keys, propped doors, and no audit trail make restricted rooms and after-hours entry a guessing game.</p>
              <ul class="ind-bullets">
                <li>Credentials you can revoke the same day</li>
                <li>Schedules that match open hours, bells, and shifts</li>
                <li>Time-stamped logs for the doors that matter</li>
              </ul>
              <div class="ind-tags">
                <span>Keyless entry</span>
                <span>Schedules</span>
                <span>Audit logs</span>
              </div>
              <a href="/services/access-control" class="card-link">Explore access control <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel">
            <a href="/services/network-cabling" class="ind-panel-media" style="background-image:url('/assets/network-cabling.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Network cabling</span>
              <h3><a href="/services/network-cabling">The backbone every camera and door depends on</a></h3>
              <p class="ind-problem">Great hardware on weak cabling drops offline and forces fragile wireless workarounds that fail when distance gets real.</p>
              <ul class="ind-bullets">
                <li>Cat6 and fiber planned for security load</li>
                <li>Long runs across yards and multi-building sites</li>
                <li>Tested pathways ready to expand</li>
              </ul>
              <div class="ind-tags">
                <span>Cat6</span>
                <span>Fiber</span>
                <span>Structured wiring</span>
              </div>
              <a href="/services/network-cabling" class="card-link">Explore network cabling <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel">
            <a href="/services/intrusion-systems" class="ind-panel-media" style="background-image:url('/assets/intrusion-systems.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Intrusion systems</span>
              <h3><a href="/services/intrusion-systems">Know the moment something opens after hours</a></h3>
              <p class="ind-problem">Cameras alone do not always wake anyone. Sensors and zones give the early signal - especially when paired with video.</p>
              <ul class="ind-bullets">
                <li>Door, motion, and zone design for the building</li>
                <li>Alerts that pair with video verification</li>
                <li>After-hours protection for real facilities</li>
              </ul>
              <div class="ind-tags">
                <span>Sensors</span>
                <span>Alarms</span>
                <span>Early alerts</span>
              </div>
              <a href="/services/intrusion-systems" class="card-link">Explore intrusion systems <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel ind-panel-feature">
            <a href="/services/support" class="ind-panel-media" style="background-image:url('/assets/support.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Expert support</span>
              <h3><a href="/services/support">Install done right - and someone who answers after</a></h3>
              <p class="ind-problem">The worst systems are the ones nobody can use, nobody documents, and nobody fixes when a recorder dies on a Friday.</p>
              <ul class="ind-bullets">
                <li>Install coordinated around your calendar</li>
                <li>Phone help within 24 hrs | on-site within 48 hrs</li>
                <li>Training, warranties, and service agreements</li>
              </ul>
              <div class="ind-tags">
                <span>Install</span>
                <span>24 / 48 support</span>
                <span>Training</span>
              </div>
              <a href="/services/support" class="card-link">Explore install and support <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>
        </div>

        <div style="text-align:center;margin-top:2.25rem;">
          <a href="/solutions" class="btn btn-outline">View all solutions</a>
        </div>
      </div>
    </section>

    <section class="section section-alt" id="industries">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">Who we serve</span>
          <h2 class="section-title">Pick your world. We speak that language.</h2>
          <p class="section-lead">Different facilities create different risk. Industry pages lead with those problems - not a recycled product list.</p>
        </div>

        <div class="ind-showcase">
          <article class="ind-panel">
            <a href="/industries/retail-commercial" class="ind-panel-media" style="background-image:url('/assets/retail-store.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Retail and commercial</span>
              <h3><a href="/industries/retail-commercial">Stop shrinkage before it hits the bottom line</a></h3>
              <p class="ind-problem">Shoplifting, propped back doors, and after-hours inventory loss are retail problems - not generic camera problems.</p>
              <div class="ind-tags"><span>Loss prevention</span><span>POS coverage</span><span>After-hours AI</span></div>
              <a href="/industries/retail-commercial" class="card-link">Explore retail <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel">
            <a href="/industries/k-12-education" class="ind-panel-media" style="background-image:url('/assets/school-campus.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">K-12 education</span>
              <h3><a href="/industries/k-12-education">Safer schools staff can actually run</a></h3>
              <p class="ind-problem">Visitor chaos, vestibules, bus lots, and doors that should match the bell - systems admins will use, not ignore.</p>
              <div class="ind-tags"><span>Vestibule focus</span><span>Door schedules</span><span>Campus video</span></div>
              <a href="/industries/k-12-education" class="card-link">Explore K-12 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel">
            <a href="/industries/higher-education" class="ind-panel-media" style="background-image:url('/assets/office-lobby.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Higher education</span>
              <h3><a href="/industries/higher-education">Campus-scale coverage that grows with you</a></h3>
              <p class="ind-problem">Residence halls, labs, parking, and pathways need multi-building systems campus safety and IT can manage.</p>
              <div class="ind-tags"><span>Multi-building</span><span>Housing access</span><span>Parking / LPR</span></div>
              <a href="/industries/higher-education" class="card-link">Explore campuses <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel">
            <a href="/industries/law-enforcement" class="ind-panel-media" style="background-image:url('/assets/control-room.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Law enforcement</span>
              <h3><a href="/industries/law-enforcement">Evidence-ready systems that stay online</a></h3>
              <p class="ind-problem">Gaps in recording, vague access history, and long outages are unacceptable. LPR, audits, and uptime matter as much as hardware.</p>
              <div class="ind-tags"><span>LPR cameras</span><span>Evidence rooms</span><span>Uptime focus</span></div>
              <a href="/industries/law-enforcement" class="card-link">Explore public safety <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>

          <article class="ind-panel ind-panel-feature">
            <a href="/industries/industrial" class="ind-panel-media" style="background-image:url('/assets/warehouse.jpg')" aria-hidden="true" tabindex="-1"></a>
            <div class="ind-panel-body">
              <span class="ind-kicker">Industrial</span>
              <h3><a href="/industries/industrial">Rugged visibility for yards, docks, and production</a></h3>
              <p class="ind-problem">Materials walk off, vehicle zones create liability, and indoor kits die outdoors. Sites need outdoor-rated design and long fiber runs.</p>
              <div class="ind-tags"><span>Outdoor video</span><span>Gate access</span><span>Fiber runs</span></div>
              <a href="/industries/industrial" class="card-link">Explore industrial <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
            </div>
          </article>
        </div>

        <div style="text-align:center;margin-top:2.25rem;">
          <a href="/industries" class="btn btn-outline">View all industries</a>
        </div>
      </div>
    </section>

    <section class="section" id="process">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">How we work</span>
          <h2 class="section-title">One process. Different designs for every site.</h2>
          <p class="section-lead">Said once on the homepage so Solutions and Industries do not have to carry the whole story alone.</p>
        </div>
        <div class="ind-process">
          <div class="ind-process-step">
            <span class="ind-process-num">01</span>
            <h3>Assess the real risk</h3>
            <p>Walk the site. Talk to the people who open doors at 6 a.m. and lock up at 10 p.m. Map what goes wrong today.</p>
          </div>
          <div class="ind-process-step">
            <span class="ind-process-num">02</span>
            <h3>Design the right mix</h3>
            <p>Cameras, doors, cabling, and intrusion matched to layout, budget, and who needs access to what.</p>
          </div>
          <div class="ind-process-step">
            <span class="ind-process-num">03</span>
            <h3>Install around your calendar</h3>
            <p>Coordinate around store hours, school bells, production shifts, and operational blackout windows.</p>
          </div>
          <div class="ind-process-step">
            <span class="ind-process-num">04</span>
            <h3>Support after go-live</h3>
            <p>Train your team. Document the system. Phone within 24 hours. On-site within 48 when needed.</p>
          </div>
        </div>
      </div>
    </section>

    <section class="section section-alt" id="why-jcs">
      <div class="container">
        <div class="ind-tools-split">
          <div>
            <span class="section-label">Why JCS</span>
            <h2 class="section-title">Built for facilities that cannot afford shelfware security</h2>
            <p class="section-lead" style="margin-bottom:1.25rem;">We do not drop a generic kit and walk away. Every system is planned around your risks, hours, and the people who will live in the software.</p>
            <ul class="check-list">
              <li>
                <span class="check"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3"><path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7"/></svg></span>
                <div>
                  <strong>AI that cuts noise, not coverage</strong>
                  <span>People, vehicle, and LPR options so alerts earn attention.</span>
                </div>
              </li>
              <li>
                <span class="check"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3"><path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7"/></svg></span>
                <div>
                  <strong>Cloud or on-premise flexibility</strong>
                  <span>Architecture matched to IT policy, multi-site needs, and retention.</span>
                </div>
              </li>
              <li>
                <span class="check"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3"><path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7"/></svg></span>
                <div>
                  <strong>Infrastructure done right</strong>
                  <span>Cabling designed so cameras and doors stay online across the footprint.</span>
                </div>
              </li>
              <li>
                <span class="check"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3"><path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7"/></svg></span>
                <div>
                  <strong>Local partner, clear response times</strong>
                  <span>South Mississippi focus with phone help in 24 hrs and on-site in 48.</span>
                </div>
              </li>
            </ul>
            <div class="hero-actions" style="margin-top:1.5rem;margin-bottom:0;">
              <a href="/about" class="btn btn-secondary">About JCS</a>
              <a href="/contact" class="btn btn-primary">Get a free assessment</a>
            </div>
          </div>
          <div>
            <div class="split-photo" style="background-image:url('/assets/support-2.jpg');min-height:320px;border-radius:var(--radius-lg);background-size:cover;background-position:center;" role="img" aria-label="JCS security team at work"></div>
          </div>
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="section-header centered" style="margin-bottom:1.75rem;">
          <span class="section-label">In the field</span>
          <h2 class="section-title">Systems built for real South Mississippi sites</h2>
        </div>
        <div class="home-gallery home-gallery-lg">
          <figure>
            <img src="/assets/video-surveillance.jpg" alt="Outdoor security camera on a commercial property" width="800" height="600" loading="lazy" />
            <figcaption>Video and AI analytics</figcaption>
          </figure>
          <figure>
            <img src="/assets/retail-store.jpg" alt="Retail commercial interior" width="600" height="400" loading="lazy" />
            <figcaption>Retail and commercial</figcaption>
          </figure>
          <figure>
            <img src="/assets/school-campus.jpg" alt="School campus exterior" width="600" height="400" loading="lazy" />
            <figcaption>K-12 and campuses</figcaption>
          </figure>
          <figure>
            <img src="/assets/access-control.jpg" alt="Electronic access control at a facility entrance" width="600" height="400" loading="lazy" />
            <figcaption>Access control</figcaption>
          </figure>
          <figure>
            <img src="/assets/warehouse.jpg" alt="Industrial warehouse facility" width="600" height="400" loading="lazy" />
            <figcaption>Industrial yards and docks</figcaption>
          </figure>
          <figure>
            <img src="/assets/control-room.jpg" alt="Security monitoring technology" width="600" height="400" loading="lazy" />
            <figcaption>Public safety systems</figcaption>
          </figure>
          <figure>
            <img src="/assets/parking-lot.jpg" alt="Parking lot vehicle monitoring" width="600" height="400" loading="lazy" />
            <figcaption>Lots, LPR, perimeter</figcaption>
          </figure>
          <figure>
            <img src="/assets/support.jpg" alt="Technician supporting a security installation" width="600" height="400" loading="lazy" />
            <figcaption>Install and support</figcaption>
          </figure>
        </div>
      </div>
    </section>

    <section class="section section-alt" id="results">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">Results</span>
          <h2 class="section-title">What customers say after install</h2>
          <p class="section-lead">Real businesses using JCS for day-to-day visibility and fewer headaches.</p>
        </div>
        <div class="testimonials-grid">
          <article class="testimonial">
            <div class="stars" aria-label="5 stars">*****</div>
            <blockquote>"JCS Safety Systems did an amazing job setting up high-quality cameras at 1st Place Express Carwash. The well-placed cameras allow me to see more than I ever have before, and I've seen way fewer customer complaints since they were installed."</blockquote>
            <div class="testimonial-meta">
              <strong>1st Place Express Carwash</strong>
              <span>Retail and commercial customer</span>
            </div>
          </article>
          <article class="testimonial">
            <div class="stars" aria-label="5 stars">*****</div>
            <blockquote>"The well-placed cameras allow me to see more than I ever have before. Working with their team was a great experience - clear communication and a system we can actually use."</blockquote>
            <div class="testimonial-meta">
              <strong>South Mississippi facility</strong>
              <span>Video surveillance customer</span>
            </div>
          </article>
          <article class="testimonial">
            <div class="stars" aria-label="5 stars">*****</div>
            <blockquote>"Cloud-based cameras with instant alerts completely changed how we manage our sites. When something happens after hours, we know - we are not guessing the next morning."</blockquote>
            <div class="testimonial-meta">
              <strong>Multi-site operator</strong>
              <span>AI video customer</span>
            </div>
          </article>
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="cta-banner">
          <h2>Not sure where to start? Describe the site.</h2>
          <p>We will map risks, recommend a mix of video, access, cabling, and intrusion, and quote clearly - no pressure sales script.</p>
          <div class="hero-actions">
            <a href="/contact" class="btn btn-primary btn-lg">Get a free assessment</a>
            <a href="tel:+16013376852" class="btn btn-secondary btn-lg">(601) 337-6852</a>
          </div>
        </div>
      </div>
    </section>
  </main>
'''

html = head + "\n" + header + "\n" + main + "\n  " + footer
(root / "index.html").write_text(html, encoding="utf-8", newline="\n")

css_path = root / "css" / "styles.css"
css = css_path.read_text(encoding="utf-8")
if ".testimonial-meta" not in css:
    css += """

/* Home testimonial attribution (replaces broken footer nesting) */
.testimonial-meta {
  margin-top: 1rem;
  padding-top: 0.85rem;
  border-top: 1px solid rgba(255,255,255,0.06);
}
.testimonial-meta strong {
  display: block;
  color: var(--white);
  font-size: 0.95rem;
  margin-bottom: 0.15rem;
}
.testimonial-meta span {
  font-size: 0.85rem;
  color: var(--slate-400);
}
"""
    css_path.write_text(css, encoding="utf-8", newline="\n")
    print("CSS updated")

idx = (root / "index.html").read_text(encoding="utf-8")
print(f"index size: {len(idx)}")
print(f"footers: {idx.count('class=\"site-footer\"')}")
print(f"broken nest: {'site-footer' in idx[idx.find('blockquote'):idx.find('blockquote')+400] if 'blockquote' in idx else 'n/a'}")
print(f"main after mob-cta: {'mob-cta' in idx and idx.find('mob-cta') < idx.find('<main>')}")
print(f"ind-panel count: {idx.count('ind-panel')}")
print(f"cta-banner: {'cta-banner' in idx}")
print(f"testimonial-meta: {'testimonial-meta' in idx}")
print(f"All Industries footer: {'All Industries' in idx}")
print("OK")
