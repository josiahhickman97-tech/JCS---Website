$root = "C:\Users\josia\jcs-safety-systems-website"
$indDir = Join-Path $root "industries"
New-Item -ItemType Directory -Force -Path $indDir | Out-Null

function Get-Header([int]$depth) {
  $p = if ($depth -eq 0) { "" } elseif ($depth -eq 1) { "../" } else { "../../" }
  $logo = "${p}assets/logo.png"
  $homeUrl = "${p}index.html"
  $ind = "${p}industries.html"
  $about = "${p}about.html"
  $contact = "${p}contact.html"
  $sv = "${p}services/"
  $indFolder = "${p}industries/"
  return @"
  <div class="topbar">
    <div class="container">
      <div class="topbar-links">
        <a href="tel:+16013376852"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>(601) 337-6852</a>
        <a href="mailto:Sales@jcsprotects.com"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>Sales@jcsprotects.com</a>
      </div>
      <span class="hide-sm">Phone support within 24 hrs · On-site within 48 hrs</span>
    </div>
  </div>
  <header class="site-header">
    <div class="container">
      <a href="$homeUrl" class="logo" aria-label="JCS Safety Systems home">
        <img src="$logo" alt="JCS Safety Systems" class="logo-img" width="160" height="102" />
      </a>
      <nav class="nav" aria-label="Primary">
        <a href="$homeUrl">Home</a>
        <div class="nav-dropdown">
          <button type="button">Solutions <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7"/></svg></button>
          <div class="dropdown-menu">
            <a href="${sv}video-surveillance.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z"/></svg></span><span><strong>Video Surveillance</strong><small>AI cameras, LPR, cloud &amp; on-site</small></span></a>
            <a href="${sv}access-control.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M15 7a2 2 0 012 2m4 0a6 6 0 01-7.743 5.743L11 17H9v2H7v2H4a1 1 0 01-1-1v-2.586a1 1 0 01.293-.707l5.964-5.964A6 6 0 1121 9z"/></svg></span><span><strong>Access Control</strong><small>Keyless entry, schedules &amp; logs</small></span></a>
            <a href="${sv}network-cabling.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg></span><span><strong>Network Cabling</strong><small>Fiber, Cat6 &amp; structured wiring</small></span></a>
            <a href="${sv}intrusion-systems.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/></svg></span><span><strong>Intrusion Systems</strong><small>Alarms, sensors &amp; monitoring</small></span></a>
            <a href="${sv}support.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"/></svg></span><span><strong>Expert Support</strong><small>Install, maintenance &amp; service</small></span></a>
          </div>
        </div>
        <div class="nav-dropdown">
          <button type="button">Industries <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7"/></svg></button>
          <div class="dropdown-menu">
            <a href="${indFolder}retail-commercial.html"><span><strong>Retail &amp; Commercial</strong><small>Stores, shops &amp; businesses</small></span></a>
            <a href="${indFolder}k-12-education.html"><span><strong>K-12 Education</strong><small>Schools &amp; campuses</small></span></a>
            <a href="${indFolder}higher-education.html"><span><strong>Higher Education</strong><small>Colleges &amp; universities</small></span></a>
            <a href="${indFolder}law-enforcement.html"><span><strong>Law Enforcement</strong><small>Corrections &amp; public safety</small></span></a>
            <a href="${indFolder}industrial.html"><span><strong>Industrial</strong><small>Yards, docks &amp; plants</small></span></a>
            <a href="$ind"><span><strong>All industries</strong><small>View full list</small></span></a>
          </div>
        </div>
        <a href="$about">About</a>
        <a href="$contact">Contact</a>
      </nav>
      <div class="header-cta">
        <a href="$contact" class="btn btn-primary">Get a Free Quote</a>
        <button type="button" class="nav-toggle" aria-label="Open menu" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16"/></svg></button>
      </div>
    </div>
  </header>
  <div class="mobile-nav">
    <a href="$homeUrl">Home</a>
    <div class="mob-sub">
      <a href="${sv}video-surveillance.html">Video Surveillance</a>
      <a href="${sv}access-control.html">Access Control</a>
      <a href="${sv}network-cabling.html">Network Cabling</a>
      <a href="${sv}intrusion-systems.html">Intrusion Systems</a>
      <a href="${sv}support.html">Expert Support</a>
    </div>
    <a href="$ind">Industries</a>
    <div class="mob-sub">
      <a href="${indFolder}retail-commercial.html">Retail &amp; Commercial</a>
      <a href="${indFolder}k-12-education.html">K-12 Education</a>
      <a href="${indFolder}higher-education.html">Higher Education</a>
      <a href="${indFolder}law-enforcement.html">Law Enforcement</a>
      <a href="${indFolder}industrial.html">Industrial</a>
    </div>
    <a href="$about">About</a>
    <a href="$contact">Contact</a>
    <div class="mob-cta">
      <a href="tel:+16013376852" class="btn btn-secondary btn-block">(601) 337-6852</a>
      <a href="$contact" class="btn btn-primary btn-block">Get a Free Quote</a>
    </div>
  </div>
"@
}

function Get-Footer([int]$depth) {
  $p = if ($depth -eq 0) { "" } elseif ($depth -eq 1) { "../" } else { "../../" }
  $logo = "${p}assets/logo.png"
  $homeUrl = "${p}index.html"
  $ind = "${p}industries.html"
  $about = "${p}about.html"
  $contact = "${p}contact.html"
  $sv = "${p}services/"
  $js = "${p}js/main.js"
  return @"
  <footer class="site-footer">
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <a href="$homeUrl" class="logo"><img src="$logo" alt="JCS Safety Systems" class="logo-img" width="160" height="102" /></a>
          <p>Tailored video surveillance, access control, intrusion systems, and network cabling.</p>
          <a href="tel:+16013376852" class="btn btn-outline btn-sm">(601) 337-6852</a>
        </div>
        <div class="footer-col"><h4>Solutions</h4><ul>
          <li><a href="${sv}video-surveillance.html">Video Surveillance</a></li>
          <li><a href="${sv}access-control.html">Access Control</a></li>
          <li><a href="${sv}network-cabling.html">Network Cabling</a></li>
          <li><a href="${sv}intrusion-systems.html">Intrusion Systems</a></li>
          <li><a href="${sv}support.html">Expert Support</a></li>
        </ul></div>
        <div class="footer-col"><h4>Industries</h4><ul>
          <li><a href="${p}industries/retail-commercial.html">Retail &amp; Commercial</a></li>
          <li><a href="${p}industries/k-12-education.html">K-12 Education</a></li>
          <li><a href="${p}industries/higher-education.html">Higher Education</a></li>
          <li><a href="${p}industries/law-enforcement.html">Law Enforcement</a></li>
          <li><a href="${p}industries/industrial.html">Industrial</a></li>
        </ul></div>
        <div class="footer-col"><h4>Company</h4><ul>
          <li><a href="$about">About Us</a></li>
          <li><a href="$ind">All Industries</a></li>
          <li><a href="$contact">Contact</a></li>
          <li><a href="mailto:Sales@jcsprotects.com">Sales@jcsprotects.com</a></li>
        </ul></div>
      </div>
      <div class="footer-bottom">
        <span>&copy; 2026 JCS Safety Systems. All rights reserved.</span>
        <span>Empowering safety through innovative security solutions.</span>
      </div>
    </div>
  </footer>
  <script src="$js"></script>
"@
}

$serviceCards = @'
            <div class="industry-services">
              <article class="industry-service-card">
                <div class="isc-img" style="background-image:url('../assets/video-surveillance.jpg')"></div>
                <div class="isc-body">
                  <h3>Surveillance Security</h3>
                  <p>JCS Safety Systems provides tailored cloud-based and on-site video surveillance solutions, enhanced by AI features like real-time human and vehicle detection, License Plate Recognition (LPR), and line-crossing alerts. Our user-friendly platform and AI-powered search tools ensure easy access to live and recorded footage, with expert consultation for optimal camera placement.</p>
                  <a href="../services/video-surveillance.html" class="card-link">Learn more <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
                </div>
              </article>
              <article class="industry-service-card">
                <div class="isc-img" style="background-image:url('../assets/access-control.jpg')"></div>
                <div class="isc-body">
                  <h3>Access Control</h3>
                  <p>JCS Safety Systems offers advanced, user-friendly access control solutions, available as scalable cloud-based or on-premise systems, adaptable to any door size. Our keyless, touchless systems feature time-stamped logs and scheduled lock settings to ensure real-time tracking, accountability, and security for restricted areas.</p>
                  <a href="../services/access-control.html" class="card-link">Learn more <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
                </div>
              </article>
              <article class="industry-service-card">
                <div class="isc-img" style="background-image:url('../assets/network-cabling.jpg')"></div>
                <div class="isc-body">
                  <h3>Network Cabling</h3>
                  <p>JCS Safety Systems provides expert network cabling solutions, installing fiber optic and category cabling (Cat 5e, Cat 6, fiber optic, and beyond) to ensure a reliable, high-speed network for your business. Planned installations deliver scalability and durability with minimal downtime.</p>
                  <a href="../services/network-cabling.html" class="card-link">Learn more <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/></svg></a>
                </div>
              </article>
            </div>
'@

# Load industry data from JSON for cleaner script
$dataPath = Join-Path $root "_industries-data.json"
$industries = Get-Content $dataPath -Raw -Encoding UTF8 | ConvertFrom-Json

foreach ($ind in $industries) {
  $header = Get-Header 1
  $footer = Get-Footer 1
  $faqsHtml = ($ind.faqs | ForEach-Object {
    "              <details class=`"faq-item`"><summary>$([System.Net.WebUtility]::HtmlEncode($_.q))</summary><div class=`"faq-body`">$([System.Net.WebUtility]::HtmlEncode($_.a))</div></details>"
  }) -join "`n"

  $tHtml = ($ind.testimonials | ForEach-Object {
    $initial = $_.n.Substring(0,1)
    @"
          <article class="testimonial">
            <div class="stars" aria-label="5 stars">★★★★★</div>
            <blockquote>&ldquo;$([System.Net.WebUtility]::HtmlEncode($_.q))&rdquo;</blockquote>
            <footer>
              <span class="avatar">$initial</span>
              <div><strong>$([System.Net.WebUtility]::HtmlEncode($_.n))</strong><span>$([System.Net.WebUtility]::HtmlEncode($_.b))</span></div>
            </footer>
          </article>
"@
  }) -join "`n"

  $titleEnc = [System.Net.WebUtility]::HtmlEncode($ind.title)
  $shortEnc = [System.Net.WebUtility]::HtmlEncode($ind.short)
  $subEnc = [System.Net.WebUtility]::HtmlEncode($ind.sub)
  $bodyEnc = [System.Net.WebUtility]::HtmlEncode($ind.body)
  $c1t = [System.Net.WebUtility]::HtmlEncode($ind.c1t)
  $c1b = [System.Net.WebUtility]::HtmlEncode($ind.c1b)
  $c2t = [System.Net.WebUtility]::HtmlEncode($ind.c2t)
  $c2b = [System.Net.WebUtility]::HtmlEncode($ind.c2b)
  $c3t = [System.Net.WebUtility]::HtmlEncode($ind.c3t)
  $c3b = [System.Net.WebUtility]::HtmlEncode($ind.c3b)
  $shortLower = $ind.short.ToLower()

  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>$titleEnc Security Solutions | JCS Safety Systems</title>
  <meta name="description" content="JCS Safety Systems security solutions for ${titleEnc} - video surveillance, access control, and network cabling." />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,400;0,9..40,500;0,9..40,600;0,9..40,700;1,9..40,400&family=Outfit:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="../css/styles.css" />
</head>
<body>
$header
  <main>
    <section class="page-hero has-image" style="--hero-image: url('../assets/$($ind.heroImg)')">
      <div class="container">
        <nav class="breadcrumb" aria-label="Breadcrumb">
          <a href="../index.html">Home</a>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"/></svg>
          <a href="../industries.html">Industries</a>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"/></svg>
          <span>$shortEnc</span>
        </nav>
        <h1>$titleEnc</h1>
        <p class="lead">$subEnc</p>
        <div class="hero-actions" style="margin-top:1.5rem;margin-bottom:0">
          <a href="../contact.html" class="btn btn-primary btn-lg">Get a Free Assessment</a>
          <a href="tel:+16013376852" class="btn btn-secondary btn-lg">(601) 337-6852</a>
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <div class="content-grid">
          <div class="prose"><p>$bodyEnc</p></div>
          <aside>
            <div class="sidebar-card">
              <img class="sidebar-photo" src="../assets/$($ind.heroImg)" alt="$titleEnc security" width="400" height="160" loading="lazy" />
              <h3>Protect this facility type</h3>
              <p>Free consultation and on-site walkthrough for $shortLower facilities.</p>
              <a href="../contact.html" class="btn btn-primary btn-block">Request a Quote</a>
              <div class="contact-bits">
                <a href="tel:+16013376852"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>(601) 337-6852</a>
                <a href="mailto:Sales@jcsprotects.com"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>Sales@jcsprotects.com</a>
              </div>
            </div>
          </aside>
        </div>
      </div>
    </section>

    <section class="section section-alt">
      <div class="container">
        <div class="section-header">
          <span class="section-label">Challenges &amp; solutions</span>
          <h2 class="section-title">How we secure $shortLower facilities</h2>
          <p class="section-lead">From site walkthrough to go-live, we fix real problems — not generic templates.</p>
        </div>
        <div class="challenge-list">
          <div class="challenge-row">
            <div class="challenge-copy">
              <span class="challenge-num">1</span>
              <h3>$c1t</h3>
              <p>$c1b</p>
            </div>
            <div class="challenge-media"><img src="../assets/$($ind.c1i)" alt="$c1t" loading="lazy" /></div>
          </div>
          <div class="challenge-row reverse">
            <div class="challenge-copy">
              <span class="challenge-num">2</span>
              <h3>$c2t</h3>
              <p>$c2b</p>
            </div>
            <div class="challenge-media"><img src="../assets/$($ind.c2i)" alt="$c2t" loading="lazy" /></div>
          </div>
          <div class="challenge-row">
            <div class="challenge-copy">
              <span class="challenge-num">3</span>
              <h3>$c3t</h3>
              <p>$c3b</p>
            </div>
            <div class="challenge-media"><img src="../assets/$($ind.c3i)" alt="$c3t" loading="lazy" /></div>
          </div>
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">Solutions</span>
          <h2 class="section-title">Services that fit this industry</h2>
          <p class="section-lead">Surveillance, access control, and network cabling — designed as one coordinated system.</p>
        </div>
$serviceCards
        <div style="text-align:center;margin-top:2rem">
          <a href="../contact.html" class="btn btn-primary">Talk through the right mix</a>
        </div>
      </div>
    </section>

    <section class="section section-alt">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">Results</span>
          <h2 class="section-title">What customers say</h2>
        </div>
        <div class="testimonials-grid">
$tHtml
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <div class="section-header">
          <span class="section-label">FAQ</span>
          <h2 class="section-title">Common questions</h2>
          <p class="section-lead">Can&rsquo;t find your answer? Email <a href="mailto:Sales@jcsprotects.com" class="text-cyan">Sales@jcsprotects.com</a> or call <a href="tel:+16013376852" class="text-cyan">(601) 337-6852</a>.</p>
        </div>
        <div class="faq-list">
$faqsHtml
        </div>
      </div>
    </section>

    <section class="section section-sm section-alt">
      <div class="container">
        <div class="cta-banner">
          <h2>Ready to secure your $shortLower facility?</h2>
          <p>Get a free consultation and on-site walkthrough. We&rsquo;ll map cameras, access, and cabling around your real risks and budget.</p>
          <div class="hero-actions">
            <a href="../contact.html" class="btn btn-primary btn-lg">Contact Us</a>
            <a href="tel:+16013376852" class="btn btn-secondary btn-lg">(601) 337-6852</a>
          </div>
        </div>
      </div>
    </section>
  </main>
$footer
</body>
</html>
"@

  $out = Join-Path $indDir "$($ind.slug).html"
  [System.IO.File]::WriteAllText($out, $html, [System.Text.UTF8Encoding]::new($false))
  Write-Output "Wrote $($ind.slug).html"
}

Write-Output "All industry pages complete."
