$ErrorActionPreference = "Stop"
$root = "C:\Users\josia\jcs-safety-systems-website"

function Get-Chrome([string]$depth) {
  $p = if ($depth -eq "root") { "" } else { "../" }
  $sv = if ($depth -eq "root") { "services/" } elseif ($depth -eq "services") { "" } else { "../services/" }
  $ind = if ($depth -eq "root") { "industries/" } elseif ($depth -eq "industries") { "" } else { "../industries/" }
  $homeUrl = "${p}index.html"
  $logo = "${p}assets/logo.png"
  $solutionsHub = "${p}solutions.html"
  $indHub = "${p}industries.html"
  $about = "${p}about.html"
  $contact = "${p}contact.html"
  $chevron = '<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7"/></svg>'

  return @"
  <div class="topbar">
    <div class="container">
      <div class="topbar-links">
        <a href="tel:+16013376852"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>(601) 337-6852</a>
        <a href="mailto:Sales@jcsprotects.com"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>Sales@jcsprotects.com</a>
      </div>
      <span class="hide-sm">Phone support within 24 hrs | On-site within 48 hrs</span>
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
          <a href="$solutionsHub" class="nav-parent-link">Solutions</a>
          <button type="button" class="nav-chevron" aria-label="Open Solutions menu" aria-haspopup="true" aria-expanded="false">$chevron</button>
          <div class="dropdown-menu" role="menu">
            <a href="${sv}video-surveillance.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z"/></svg></span><span><strong>Video Surveillance</strong><small>AI cameras, LPR, cloud and on-site</small></span></a>
            <a href="${sv}access-control.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M15 7a2 2 0 012 2m4 0a6 6 0 01-7.743 5.743L11 17H9v2H7v2H4a1 1 0 01-1-1v-2.586a1 1 0 01.293-.707l5.964-5.964A6 6 0 1121 9z"/></svg></span><span><strong>Access Control</strong><small>Keyless entry, schedules and logs</small></span></a>
            <a href="${sv}network-cabling.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg></span><span><strong>Network Cabling</strong><small>Fiber, Cat6 and structured wiring</small></span></a>
            <a href="${sv}intrusion-systems.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/></svg></span><span><strong>Intrusion Systems</strong><small>Alarms, sensors and monitoring</small></span></a>
            <a href="${sv}support.html"><span class="dd-icon"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"/></svg></span><span><strong>Expert Support</strong><small>Install, maintenance and service</small></span></a>
          </div>
        </div>
        <div class="nav-dropdown">
          <a href="$indHub" class="nav-parent-link">Industries</a>
          <button type="button" class="nav-chevron" aria-label="Open Industries menu" aria-haspopup="true" aria-expanded="false">$chevron</button>
          <div class="dropdown-menu" role="menu">
            <a href="${ind}retail-commercial.html"><span><strong>Retail and Commercial</strong><small>Stores, shops and businesses</small></span></a>
            <a href="${ind}k-12-education.html"><span><strong>K-12 Education</strong><small>Schools and campuses</small></span></a>
            <a href="${ind}higher-education.html"><span><strong>Higher Education</strong><small>Colleges and universities</small></span></a>
            <a href="${ind}law-enforcement.html"><span><strong>Law Enforcement</strong><small>Corrections and public safety</small></span></a>
            <a href="${ind}industrial.html"><span><strong>Industrial</strong><small>Yards, docks and plants</small></span></a>
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
  <div class="mobile-nav" aria-label="Mobile navigation">
    <a href="$homeUrl">Home</a>
    <a href="$solutionsHub">Solutions</a>
    <div class="mob-sub">
      <a href="${sv}video-surveillance.html">Video Surveillance</a>
      <a href="${sv}access-control.html">Access Control</a>
      <a href="${sv}network-cabling.html">Network Cabling</a>
      <a href="${sv}intrusion-systems.html">Intrusion Systems</a>
      <a href="${sv}support.html">Expert Support</a>
    </div>
    <a href="$indHub">Industries</a>
    <div class="mob-sub">
      <a href="${ind}retail-commercial.html">Retail and Commercial</a>
      <a href="${ind}k-12-education.html">K-12 Education</a>
      <a href="${ind}higher-education.html">Higher Education</a>
      <a href="${ind}law-enforcement.html">Law Enforcement</a>
      <a href="${ind}industrial.html">Industrial</a>
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

function Fix-Page([string]$file, [string]$depth) {
  $html = [System.IO.File]::ReadAllText($file)
  $chrome = Get-Chrome $depth

  $bodyMatch = [regex]::Match($html, '(?s)<body[^>]*>\s*')
  if (-not $bodyMatch.Success) { throw "No body in $file" }
  $mainMatch = [regex]::Match($html, '(?s)<main[\s>]')
  if (-not $mainMatch.Success) { throw "No main in $file" }

  $before = $html.Substring(0, $bodyMatch.Index + $bodyMatch.Length)
  $mainPart = $html.Substring($mainMatch.Index)
  $newHtml = $before + $chrome + "  " + $mainPart

  if ($depth -eq "services") {
    $newHtml = $newHtml.Replace('href="../index.html#solutions"', 'href="../solutions.html"')
  } else {
    $newHtml = $newHtml.Replace('href="index.html#solutions"', 'href="solutions.html"')
  }

  [System.IO.File]::WriteAllText($file, $newHtml, [System.Text.UTF8Encoding]::new($false))
  Write-Output "Fixed $file"
}

Fix-Page (Join-Path $root "index.html") "root"
Fix-Page (Join-Path $root "about.html") "root"
Fix-Page (Join-Path $root "contact.html") "root"
Fix-Page (Join-Path $root "industries.html") "root"
Fix-Page (Join-Path $root "solutions.html") "root"
Get-ChildItem (Join-Path $root "services\*.html") | ForEach-Object { Fix-Page $_.FullName "services" }
Get-ChildItem (Join-Path $root "industries\*.html") | ForEach-Object { Fix-Page $_.FullName "industries" }

Write-Output "--- verify ---"
Get-ChildItem $root -Recurse -Filter *.html | ForEach-Object {
  $c = Get-Content $_.FullName -Raw
  $parent = ([regex]::Matches($c, 'class="nav-parent-link"')).Count
  $chev = ([regex]::Matches($c, 'class="nav-chevron"')).Count
  $hasSol = $c -match 'nav-parent-link">Solutions'
  $hasInd = $c -match 'nav-parent-link">Industries'
  "{0}: parents={1} chevrons={2} solLink={3} indLink={4}" -f $_.Name, $parent, $chev, $hasSol, $hasInd
}
