# Rebuild all 5 industry detail pages with unique, problem-led content.
# Shell (nav/footer) sourced from industries.html so chrome stays in sync.
$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
if (-not $root) { $root = "C:\Users\josia\jcs-safety-systems-website" }

$shell = Get-Content (Join-Path $root "industries.html") -Raw
# Extract full chrome: from <body> through end of mobile-nav (everything before <main>).
# Do NOT use a non-greedy .*?</div>  -  that stops at the first nested </div> and
# leaves main nested inside .mobile-nav (display:none on desktop = blank pages).
$bodyIdx = $shell.IndexOf("<body>")
$mainIdx = $shell.IndexOf("<main>")
$footerIdx = $shell.IndexOf('<footer class="site-footer">')
if ($bodyIdx -lt 0 -or $mainIdx -lt 0 -or $footerIdx -lt 0) {
  throw "Could not locate body/main/footer markers in industries.html"
}
$headerBlock = $shell.Substring($bodyIdx, $mainIdx - $bodyIdx).TrimEnd()
$footerBlock = $shell.Substring($footerIdx)
# Sanity: full mobile-nav must include industry sub-links
if ($headerBlock -notmatch 'mob-sub' -or $headerBlock -notmatch 'retail-commercial') {
  throw "Header extraction incomplete  -  mobile-nav missing industry links"
}
if ($headerBlock -match '<main>') {
  throw "Header extraction incorrectly includes main"
}

function Get-Head {
  param($title, $desc, $canonical, $image, $keywords, $schemaExtra)
  return @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>$title</title>
  <meta name="description" content="$desc" />
  <meta name="robots" content="index, follow, max-image-preview:large" />
  <meta name="author" content="JCS Safety Systems" />
  <meta name="geo.region" content="US-MS" />
  <meta name="geo.placename" content="Mississippi" />
  <meta name="keywords" content="$keywords" />
  <link rel="canonical" href="$canonical" />
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="JCS Safety Systems" />
  <meta property="og:locale" content="en_US" />
  <meta property="og:title" content="$title" />
  <meta property="og:description" content="$desc" />
  <meta property="og:url" content="$canonical" />
  <meta property="og:image" content="https://jcssafetysystems.com$image" />
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="$title" />
  <meta name="twitter:description" content="$desc" />
  <meta name="twitter:image" content="https://jcssafetysystems.com$image" />
  <link rel="icon" href="/assets/logo.png" type="image/png" />
  <link rel="apple-touch-icon" href="/assets/logo.png" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,400;0,9..40,500;0,9..40,600;0,9..40,700;1,9..40,400&family=Outfit:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="/css/styles.css" />
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "Service",
    "name": "$title",
    "description": "$desc",
    "url": "$canonical",
    "provider": {
      "@type": "LocalBusiness",
      "@id": "https://jcssafetysystems.com/#business",
      "name": "JCS Safety Systems",
      "telephone": "+1-601-337-6852",
      "email": "sales@jcssafetysystems.com",
      "areaServed": "Mississippi"
    },
    "areaServed": { "@type": "AdministrativeArea", "name": "Mississippi" }
  }
  </script>
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [
      { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://jcssafetysystems.com/" },
      { "@type": "ListItem", "position": 2, "name": "Industries", "item": "https://jcssafetysystems.com/industries" },
      { "@type": "ListItem", "position": 3, "name": "$($title -replace ' \|.*','')", "item": "$canonical" }
    ]
  }
  </script>
$schemaExtra
  <meta name="google-site-verification" content="q2MnNUmAbGwjL8gBpOulNDEuHMfIPJJm5eceFNAkjpQ" />
</head>
"@
}

function Build-Pains($pains) {
  ($pains | ForEach-Object {
@"
          <article class="idp-pain">
            <span class="idp-pain-label">$($_.label)</span>
            <h3>$($_.title)</h3>
            <p>$($_.problem)</p>
            <p class="idp-fix"><strong>What we design:</strong> $($_.fix)</p>
          </article>
"@
  }) -join "`n"
}

function Build-Zones($zones) {
  ($zones | ForEach-Object {
@"
          <div class="idp-zone">
            <h3>$($_.title)</h3>
            <p>$($_.text)</p>
          </div>
"@
  }) -join "`n"
}

function Build-Outcomes($outcomes) {
  ($outcomes | ForEach-Object {
@"
        <div class="idp-outcome">
          <strong>$($_.title)</strong>
          <span>$($_.text)</span>
        </div>
"@
  }) -join "`n"
}

function Build-Sols($sols) {
  ($sols | ForEach-Object {
@"
          <a href="$($_.href)" class="idp-sol">
            <strong>$($_.title)</strong>
            <span>$($_.text)</span>
            <small>Explore solution -></small>
          </a>
"@
  }) -join "`n"
}

function Build-InstallList($items) {
  $lis = ($items | ForEach-Object { "              <li>$_</li>" }) -join "`n"
  "<ul class=`"idp-install-list`">`n$lis`n            </ul>"
}

function Build-Related($items) {
  ($items | ForEach-Object {
@"
          <a href="$($_.href)">
            <strong>$($_.title)</strong>
            <span>$($_.text)</span>
          </a>
"@
  }) -join "`n"
}

function Build-Faq($faqs) {
  $i = 0
  ($faqs | ForEach-Object {
    $open = if ($i -eq 0) { " open" } else { "" }
    $i++
@"
          <details class="ind-faq-item"$open>
            <summary>$($_.q)</summary>
            <p>$($_.a)</p>
          </details>
"@
  }) -join "`n"
}

function Build-FaqSchema($faqs) {
  $entities = foreach ($f in $faqs) {
    $q = $f.q -replace '\\', '\\\\' -replace '"', '\"'
    $a = $f.a -replace '\\', '\\\\' -replace '"', '\"'
@"
      {
        "@type": "Question",
        "name": "$q",
        "acceptedAnswer": { "@type": "Answer", "text": "$a" }
      }
"@
  }
  $joined = $entities -join ",`n"
@"
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "FAQPage",
    "mainEntity": [
$joined
    ]
  }
  </script>
"@
}

function Write-IndustryPage($cfg) {
  $faqSchema = Build-FaqSchema $cfg.faqs
  $head = Get-Head -title $cfg.title -desc $cfg.desc -canonical $cfg.canonical -image $cfg.image -keywords $cfg.keywords -schemaExtra $faqSchema
  $tags = ($cfg.tags | ForEach-Object { "              <span>$_</span>" }) -join "`n"

  $main = @"
  <main>
    <section class="page-hero has-image ind-hero" style="--hero-image: url('$($cfg.image)')">
      <div class="container">
        <nav class="breadcrumb" aria-label="Breadcrumb">
          <a href="/">Home</a>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"/></svg>
          <a href="/industries">Industries</a>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"/></svg>
          <span>$($cfg.crumb)</span>
        </nav>
        <p class="section-label" style="margin-bottom:0.85rem;">$($cfg.kicker)</p>
        <h1>$($cfg.h1)</h1>
        <p class="lead">$($cfg.lead)</p>
        <div class="hero-actions" style="margin-top:1.5rem;margin-bottom:0">
          <a href="/contact" class="btn btn-primary btn-lg">Free site assessment</a>
          <a href="#challenges" class="btn btn-secondary btn-lg">See the challenges</a>
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="idp-outcomes">
$(Build-Outcomes $cfg.outcomes)
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="idp-split">
          <div class="idp-intro">
            <span class="section-label">Why this vertical is different</span>
            <h2 class="section-title" style="margin-top:0.5rem;">$($cfg.introTitle)</h2>
            <p>$($cfg.intro)</p>
            <div class="ind-tags">
$tags
            </div>
          </div>
          <aside class="idp-sticky-cta">
            <div class="sidebar-card">
              <img class="sidebar-photo" src="$($cfg.sidebarImg)" alt="$($cfg.crumb) security" width="400" height="160" loading="lazy" />
              <h3>$($cfg.sidebarTitle)</h3>
              <p>$($cfg.sidebarText)</p>
              <a href="/contact" class="btn btn-primary btn-block">Request a quote</a>
              <div class="contact-bits">
                <a href="tel:+16013376852"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>(601) 337-6852</a>
                <a href="mailto:sales@jcssafetysystems.com"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>sales@jcssafetysystems.com</a>
              </div>
            </div>
          </aside>
        </div>
      </div>
    </section>

    <section class="section section-alt" id="challenges">
      <div class="container">
        <div class="section-header">
          <span class="section-label">Real-world challenges</span>
          <h2 class="section-title">$($cfg.challengeTitle)</h2>
          <p class="section-lead">$($cfg.challengeLead)</p>
        </div>
        <div class="idp-pain-grid">
$(Build-Pains $cfg.pains)
        </div>
      </div>
    </section>

    <section class="section" id="coverage">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">Where protection goes</span>
          <h2 class="section-title">$($cfg.zoneTitle)</h2>
          <p class="section-lead">$($cfg.zoneLead)</p>
        </div>
        <div class="idp-zones">
$(Build-Zones $cfg.zones)
        </div>
      </div>
    </section>

    <section class="section section-alt" id="solutions">
      <div class="container">
        <div class="section-header">
          <span class="section-label">Building blocks for this industry</span>
          <h2 class="section-title">$($cfg.solTitle)</h2>
          <p class="section-lead">Short pointers  -  full product detail lives on the solution pages so you are not rereading the same essay five times.</p>
        </div>
        <div class="idp-sol-row">
$(Build-Sols $cfg.sols)
        </div>
      </div>
    </section>

    <section class="section" id="install">
      <div class="container">
        <div class="idp-install">
          <div class="idp-install-copy">
            <span class="section-label">How we install here</span>
            <h2>$($cfg.installTitle)</h2>
            <p>$($cfg.installLead)</p>
$(Build-InstallList $cfg.installItems)
            <div class="hero-actions" style="margin-top:1.25rem;margin-bottom:0">
              <a href="/contact" class="btn btn-primary">Plan an install window</a>
            </div>
          </div>
          <div class="idp-install-media" style="background-image:url('$($cfg.installImg)')" role="img" aria-label="$($cfg.crumb) installation"></div>
        </div>
      </div>
    </section>

    <section class="section section-sm section-alt" id="faq">
      <div class="container">
        <div class="section-header centered">
          <span class="section-label">FAQ</span>
          <h2 class="section-title">$($cfg.faqTitle)</h2>
        </div>
        <div class="ind-faq">
$(Build-Faq $cfg.faqs)
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="section-header">
          <span class="section-label">More industries</span>
          <h2 class="section-title">Explore other facility types</h2>
        </div>
        <div class="idp-related">
$(Build-Related $cfg.related)
        </div>
      </div>
    </section>

    <section class="section section-sm">
      <div class="container">
        <div class="cta-banner">
          <h2>$($cfg.ctaTitle)</h2>
          <p>$($cfg.ctaText)</p>
          <div class="hero-actions">
            <a href="/contact" class="btn btn-primary btn-lg">Get a free assessment</a>
            <a href="tel:+16013376852" class="btn btn-secondary btn-lg">(601) 337-6852</a>
          </div>
        </div>
      </div>
    </section>
  </main>
"@

  $html = $head + "`n" + $headerBlock + "`n" + $main + "`n  " + $footerBlock
  $path = Join-Path $root "industries\$($cfg.slug).html"
  [System.IO.File]::WriteAllText($path, $html, [System.Text.UTF8Encoding]::new($false))
  Write-Host "Wrote $($cfg.slug).html ($((Get-Item $path).Length) bytes)"
}

. (Join-Path $root "_industry-content.ps1")

foreach ($cfg in $IndustryPages) {
  Write-IndustryPage $cfg
}

Write-Host "`nValidation:"
Get-ChildItem (Join-Path $root "industries\*.html") | ForEach-Object {
  $c = Get-Content $_.FullName -Raw
  $footers = ([regex]::Matches($c, 'class="site-footer"')).Count
  $hasMain = $c -match '<main>'
  $broken = $c -match '<footer class="site-footer">[\s\S]{0,200}</blockquote>'
  Write-Host ("  {0}: main={1} footers={2} brokenNest={3}" -f $_.Name, $hasMain, $footers, $broken)
}
