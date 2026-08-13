$ErrorActionPreference = "Stop"
$root = "C:\Users\josia\jcs-safety-systems-website"
$site = "https://jcssafetysystems.com"
$pages = Get-Content (Join-Path $root "_seo-pages.json") -Raw -Encoding UTF8 | ConvertFrom-Json

function Get-SeoHead($meta) {
  $title = [System.Net.WebUtility]::HtmlEncode($meta.title)
  $desc = [System.Net.WebUtility]::HtmlEncode($meta.description)
  $path = $meta.path
  $og = $meta.ogImage
  $canonical = if ($path -eq "/") { "$site/" } else { "$site$path" }
  $ogUrl = "$site$og"
@"
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>$title</title>
  <meta name="description" content="$desc" />
  <meta name="robots" content="index, follow, max-image-preview:large" />
  <meta name="author" content="JCS Safety Systems" />
  <meta name="geo.region" content="US-MS" />
  <meta name="geo.placename" content="Mississippi" />
  <link rel="canonical" href="$canonical" />
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="JCS Safety Systems" />
  <meta property="og:locale" content="en_US" />
  <meta property="og:title" content="$title" />
  <meta property="og:description" content="$desc" />
  <meta property="og:url" content="$canonical" />
  <meta property="og:image" content="$ogUrl" />
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="$title" />
  <meta name="twitter:description" content="$desc" />
  <meta name="twitter:image" content="$ogUrl" />
  <link rel="icon" href="/assets/logo.png" type="image/png" />
  <link rel="apple-touch-icon" href="/assets/logo.png" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,400;0,9..40,500;0,9..40,600;0,9..40,700;1,9..40,400&family=Outfit:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="/css/styles.css" />
"@
}

$localBusiness = @'
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
    "areaServed": {
      "@type": "AdministrativeArea",
      "name": "Mississippi"
    },
    "description": "JCS Safety Systems designs, installs, and supports AI-powered video surveillance, access control, intrusion systems, and network cabling in Mississippi.",
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
'@

function Get-Chrome {
  $chevron = '<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7"/></svg>'
@"
  <div class="topbar">
    <div class="container">
      <div class="topbar-links">
        <a href="tel:+16013376852"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>(601) 337-6852</a>
        <a href="mailto:sales@jcssafetysystems.com"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>sales@jcssafetysystems.com</a>
        <a href="https://maps.google.com/?q=PMB+53+313+Telly+Rd" target="_blank" rel="noopener"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>PMB 53 313 Telly Rd | Mississippi</a>
      </div>
      <span class="hide-sm">Phone support within 24 hrs | On-site within 48 hrs</span>
    </div>
  </div>
  <header class="site-header">
    <div class="container">
      <a href="/" class="logo" aria-label="JCS Safety Systems home">
        <img src="/assets/logo.png" alt="JCS Safety Systems logo" class="logo-img" width="160" height="102" />
      </a>
      <nav class="nav" aria-label="Primary">
        <a href="/">Home</a>
        <div class="nav-dropdown">
          <a href="/solutions" class="nav-parent-link">Solutions</a>
          <button type="button" class="nav-chevron" aria-label="Open Solutions menu" aria-haspopup="true" aria-expanded="false">$chevron</button>
          <div class="dropdown-menu" role="menu">
            <a href="/services/video-surveillance"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z"/></svg></span><span><strong>Video Surveillance</strong><small>AI cameras, LPR, cloud and on-site</small></span></a>
            <a href="/services/access-control"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M15 7a2 2 0 012 2m4 0a6 6 0 01-7.743 5.743L11 17H9v2H7v2H4a1 1 0 01-1-1v-2.586a1 1 0 01.293-.707l5.964-5.964A6 6 0 1121 9z"/></svg></span><span><strong>Access Control</strong><small>Keyless entry, schedules and logs</small></span></a>
            <a href="/services/network-cabling"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg></span><span><strong>Network Cabling</strong><small>Fiber, Cat6 and structured wiring</small></span></a>
            <a href="/services/intrusion-systems"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/></svg></span><span><strong>Intrusion Systems</strong><small>Alarms, sensors and monitoring</small></span></a>
            <a href="/services/support"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"/></svg></span><span><strong>Expert Support</strong><small>Install, maintenance and service</small></span></a>
          </div>
        </div>
        <div class="nav-dropdown">
          <a href="/industries" class="nav-parent-link">Industries</a>
          <button type="button" class="nav-chevron" aria-label="Open Industries menu" aria-haspopup="true" aria-expanded="false">$chevron</button>
          <div class="dropdown-menu" role="menu">
            <a href="/industries/retail-commercial"><span><strong>Retail and Commercial</strong><small>Stores, shops and businesses</small></span></a>
            <a href="/industries/k-12-education"><span><strong>K-12 Education</strong><small>Schools and campuses</small></span></a>
            <a href="/industries/higher-education"><span><strong>Higher Education</strong><small>Colleges and universities</small></span></a>
            <a href="/industries/law-enforcement"><span><strong>Law Enforcement</strong><small>Corrections and public safety</small></span></a>
            <a href="/industries/industrial"><span><strong>Industrial</strong><small>Yards, docks and plants</small></span></a>
          </div>
        </div>
        <a href="/about">About</a>
        <a href="/contact">Contact</a>
      </nav>
      <div class="header-cta">
        <a href="/contact" class="btn btn-primary">Get a Free Quote</a>
        <button type="button" class="nav-toggle" aria-label="Open menu" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16"/></svg></button>
      </div>
    </div>
  </header>
  <div class="mobile-nav" aria-label="Mobile navigation">
    <a href="/">Home</a>
    <a href="/solutions">Solutions</a>
    <div class="mob-sub">
      <a href="/services/video-surveillance">Video Surveillance</a>
      <a href="/services/access-control">Access Control</a>
      <a href="/services/network-cabling">Network Cabling</a>
      <a href="/services/intrusion-systems">Intrusion Systems</a>
      <a href="/services/support">Expert Support</a>
    </div>
    <a href="/industries">Industries</a>
    <div class="mob-sub">
      <a href="/industries/retail-commercial">Retail and Commercial</a>
      <a href="/industries/k-12-education">K-12 Education</a>
      <a href="/industries/higher-education">Higher Education</a>
      <a href="/industries/law-enforcement">Law Enforcement</a>
      <a href="/industries/industrial">Industrial</a>
    </div>
    <a href="/about">About</a>
    <a href="/contact">Contact</a>
    <div class="mob-cta">
      <a href="tel:+16013376852" class="btn btn-secondary btn-block">(601) 337-6852</a>
      <a href="/contact" class="btn btn-primary btn-block">Get a Free Quote</a>
    </div>
  </div>

"@
}

function Get-Footer {
@"
  <footer class="site-footer">
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <a href="/" class="logo"><img src="/assets/logo.png" alt="JCS Safety Systems logo" class="logo-img" width="160" height="102" /></a>
          <p>AI-powered video surveillance, access control, intrusion systems, and network cabling for Mississippi.</p>
          <p class="footer-address">
            <strong>PMB 53 313 Telly Rd</strong><br />
            Mississippi<br />
            <a href="tel:+16013376852">(601) 337-6852</a><br />
            <a href="mailto:sales@jcssafetysystems.com">sales@jcssafetysystems.com</a>
          </p>
          <a href="tel:+16013376852" class="btn btn-outline btn-sm">(601) 337-6852</a>
        </div>
        <div class="footer-col"><h4>Solutions</h4><ul>
          <li><a href="/services/video-surveillance">Video Surveillance</a></li>
          <li><a href="/services/access-control">Access Control</a></li>
          <li><a href="/services/network-cabling">Network Cabling</a></li>
          <li><a href="/services/intrusion-systems">Intrusion Systems</a></li>
          <li><a href="/services/support">Expert Support</a></li>
        </ul></div>
        <div class="footer-col"><h4>Industries</h4><ul>
          <li><a href="/industries/retail-commercial">Retail and Commercial</a></li>
          <li><a href="/industries/k-12-education">K-12 Education</a></li>
          <li><a href="/industries/higher-education">Higher Education</a></li>
          <li><a href="/industries/law-enforcement">Law Enforcement</a></li>
          <li><a href="/industries/industrial">Industrial</a></li>
        </ul></div>
        <div class="footer-col"><h4>Company</h4><ul>
          <li><a href="/about">About Us</a></li>
          <li><a href="/contact">Contact</a></li>
          <li><a href="/solutions">All Solutions</a></li>
          <li><a href="/industries">All Industries</a></li>
        </ul></div>
      </div>
      <div class="footer-bottom">
        <span>Copyright 2026 JCS Safety Systems. All rights reserved.</span>
        <span>Serving Mississippi | PMB 53 313 Telly Rd</span>
      </div>
    </div>
  </footer>
  <script src="/js/main.js"></script>
"@
}

function Convert-Links([string]$html) {
  $html = $html -replace 'href="(\.\./)+index\.html"', 'href="/"'
  $html = $html -replace 'href="index\.html"', 'href="/"'
  $html = $html -replace 'href="(\.\./)?solutions\.html"', 'href="/solutions"'
  $html = $html -replace 'href="(\.\./)?about\.html"', 'href="/about"'
  $html = $html -replace 'href="(\.\./)?contact\.html"', 'href="/contact"'
  $html = $html -replace 'href="(\.\./)?industries\.html"', 'href="/industries"'
  $html = $html -replace 'href="(\.\./)?services/video-surveillance\.html"', 'href="/services/video-surveillance"'
  $html = $html -replace 'href="(\.\./)?services/access-control\.html"', 'href="/services/access-control"'
  $html = $html -replace 'href="(\.\./)?services/network-cabling\.html"', 'href="/services/network-cabling"'
  $html = $html -replace 'href="(\.\./)?services/intrusion-systems\.html"', 'href="/services/intrusion-systems"'
  $html = $html -replace 'href="(\.\./)?services/support\.html"', 'href="/services/support"'
  $html = $html -replace 'href="video-surveillance\.html"', 'href="/services/video-surveillance"'
  $html = $html -replace 'href="access-control\.html"', 'href="/services/access-control"'
  $html = $html -replace 'href="network-cabling\.html"', 'href="/services/network-cabling"'
  $html = $html -replace 'href="intrusion-systems\.html"', 'href="/services/intrusion-systems"'
  $html = $html -replace 'href="support\.html"', 'href="/services/support"'
  $html = $html -replace 'href="(\.\./)?industries/retail-commercial\.html"', 'href="/industries/retail-commercial"'
  $html = $html -replace 'href="(\.\./)?industries/k-12-education\.html"', 'href="/industries/k-12-education"'
  $html = $html -replace 'href="(\.\./)?industries/higher-education\.html"', 'href="/industries/higher-education"'
  $html = $html -replace 'href="(\.\./)?industries/law-enforcement\.html"', 'href="/industries/law-enforcement"'
  $html = $html -replace 'href="(\.\./)?industries/industrial\.html"', 'href="/industries/industrial"'
  $html = $html -replace 'href="retail-commercial\.html"', 'href="/industries/retail-commercial"'
  $html = $html -replace 'href="k-12-education\.html"', 'href="/industries/k-12-education"'
  $html = $html -replace 'href="higher-education\.html"', 'href="/industries/higher-education"'
  $html = $html -replace 'href="law-enforcement\.html"', 'href="/industries/law-enforcement"'
  $html = $html -replace 'href="industrial\.html"', 'href="/industries/industrial"'
  $html = $html -replace '(href|src)="(\.\./)*css/', '$1="/css/'
  $html = $html -replace '(href|src)="(\.\./)*js/', '$1="/js/'
  $html = $html -replace '(href|src)="(\.\./)*assets/', '$1="/assets/'
  $html = $html -replace "url\('\.\./assets/", "url('/assets/"
  $html = $html -replace 'url\("\.\./assets/', 'url("/assets/'
  $html = $html -replace "url\('assets/", "url('/assets/"
  $html = $html -replace 'url\("assets/', 'url("/assets/'
  $html = $html -replace 'https://jcsprotects\.com', 'https://jcssafetysystems.com'
  $html = $html -replace '>jcsprotects\.com<', '>jcssafetysystems.com<'
  return $html
}

Get-ChildItem $root -Recurse -Filter *.html | ForEach-Object {
  $full = $_.FullName
  $rel = $full.Substring($root.Length + 1).Replace('\', '/')
  $key = $rel -replace '\.html$', ''

  $meta = $pages.$key
  if (-not $meta) {
    Write-Output "SKIP $rel"
    return
  }

  $html = [System.IO.File]::ReadAllText($full)
  $seoHead = Get-SeoHead $meta
  $chrome = Get-Chrome
  $footer = Get-Footer

  $html = [regex]::Replace($html, '(?s)<head>.*?</head>', "<head>`r`n$seoHead`r`n</head>", 1)

  $bodyMatch = [regex]::Match($html, '(?s)<body[^>]*>\s*')
  $mainMatch = [regex]::Match($html, '(?s)<main[\s>]')
  if (-not $bodyMatch.Success -or -not $mainMatch.Success) {
    Write-Output "FAIL structure $rel"
    return
  }
  $before = $html.Substring(0, $bodyMatch.Index + $bodyMatch.Length)
  $fromMain = $html.Substring($mainMatch.Index)
  $fromMain = [regex]::Replace($fromMain, '(?s)<footer[\s\S]*?</footer>\s*(?:<script[\s\S]*?</script>\s*)?(?=</body>|$)', "$footer`r`n", 1)

  $html = $before + $chrome + "  " + $fromMain
  $html = Convert-Links $html

  if ($html -notmatch 'application/ld\+json') {
    $html = $html.Replace('</head>', "$localBusiness`r`n</head>")
  }

  if ($key -eq 'contact') {
    $html = $html.Replace('Mississippi &amp; surrounding region', 'Mississippi')
    $html = $html.Replace('Mississippi & surrounding region', 'Mississippi')
    if ($html -notmatch '313 Telly') {
      $oldCard = @'
              <div class="info-card">
                <div class="ic-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg></div>
                <div>
                  <h3>Service area</h3>
                  <p>Mississippi<br /><a href="https://jcssafetysystems.com" target="_blank" rel="noopener">jcssafetysystems.com</a></p>
                </div>
              </div>
'@
      $newCard = @'
              <div class="info-card">
                <div class="ic-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg></div>
                <div>
                  <h3>Location and service area</h3>
                  <p><strong>PMB 53 313 Telly Rd</strong><br />Mississippi<br /><a href="https://maps.google.com/?q=PMB+53+313+Telly+Rd" target="_blank" rel="noopener">Get directions</a></p>
                </div>
              </div>
'@
      if ($html -match 'Service area') {
        $html = [regex]::Replace($html, '(?s)<div class="info-card">\s*<div class="ic-icon">.*?Service area.*?</div>\s*</div>', $newCard.Trim(), 1)
      } else {
        $html = $html.Replace('</div>`r`n            </div>`r`n`r`n          <div class="form-panel">', "$newCard`r`n            </div>`r`n`r`n          <div class=`"form-panel`">")
      }
    }
  }

  [System.IO.File]::WriteAllText($full, $html, [System.Text.UTF8Encoding]::new($false))
  Write-Output "OK $rel"
}

Write-Output "Done SEO upgrade."
