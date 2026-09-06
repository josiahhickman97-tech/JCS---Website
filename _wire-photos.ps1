$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
if (-not $root) { $root = "C:\Users\josia\jcs-safety-systems-website" }

# --- index.html gallery ---
$idxPath = Join-Path $root "index.html"
$idx = [System.IO.File]::ReadAllText($idxPath)

$newGallery = @"
        <div class="home-gallery home-gallery-lg">
          <figure>
            <img src="/assets/video-surveillance.jpg" alt="Outdoor dome camera installed under a building soffit" width="800" height="600" loading="lazy" />
            <figcaption>Outdoor camera installs</figcaption>
          </figure>
          <figure>
            <img src="/assets/field-camera-exterior.jpg" alt="Wall-mounted outdoor security camera on a commercial building" width="600" height="400" loading="lazy" />
            <figcaption>Exterior coverage</figcaption>
          </figure>
          <figure>
            <img src="/assets/product-camera-dome.jpg" alt="Professional dome security camera" width="600" height="400" loading="lazy" />
            <figcaption>AI-ready camera hardware</figcaption>
          </figure>
          <figure>
            <img src="/assets/access-control.jpg" alt="Access control reader installed at a facility door" width="600" height="400" loading="lazy" />
            <figcaption>Access control</figcaption>
          </figure>
          <figure>
            <img src="/assets/warehouse.jpg" alt="Warehouse security camera and cabling on steel beams" width="600" height="400" loading="lazy" />
            <figcaption>Industrial installs</figcaption>
          </figure>
          <figure>
            <img src="/assets/network-cabling.jpg" alt="Structured cabling and cameras across a warehouse ceiling" width="600" height="400" loading="lazy" />
            <figcaption>Network cabling</figcaption>
          </figure>
          <figure>
            <img src="/assets/intrusion-systems.jpg" alt="Night infrared security camera covering a facility exterior" width="600" height="400" loading="lazy" />
            <figcaption>After-hours visibility</figcaption>
          </figure>
          <figure>
            <img src="/assets/support.jpg" alt="Technician installing a security camera on a ladder" width="600" height="400" loading="lazy" />
            <figcaption>Expert install and support</figcaption>
          </figure>
        </div>
"@

$pattern = '(?s)<div class="home-gallery home-gallery-lg">.*?</div>'
if ($idx -notmatch $pattern) { throw "gallery not found" }
$idx = [regex]::Replace($idx, $pattern, $newGallery.TrimEnd(), 1)

$idx = $idx.Replace("Systems built for real Mississippi sites", "Real installs across Mississippi")
$idx = $idx.Replace(">In the field<", ">From our installs<")

# Hero monitor tiles (single-quoted so > is literal)
$idx = $idx.Replace(
  'background-image:url(''/assets/video-surveillance.jpg'')"><span>CAM 01 | Entrance</span>',
  'background-image:url(''/assets/field-camera-exterior.jpg'')"><span>CAM 01 | Entrance</span>'
)
$idx = $idx.Replace(
  'background-image:url(''/assets/access-control.jpg'')"><span>CAM 04 | Lot</span>',
  'background-image:url(''/assets/door-access.jpg'')"><span>CAM 04 | Access</span>'
)
$idx = $idx.Replace(
  'background-image:url(''/assets/warehouse.jpg'')"><span>CAM 07 | Dock</span>',
  'background-image:url(''/assets/field-warehouse-install.jpg'')"><span>CAM 07 | Warehouse</span>'
)
$idx = $idx.Replace(
  'background-image:url(''/assets/school-campus.jpg'')"><span>CAM 12 | Vestibule</span>',
  'background-image:url(''/assets/field-camera-dome.jpg'')"><span>CAM 12 | Exterior</span>'
)

# Why JCS photo
$idx = $idx.Replace(
  "background-image:url('/assets/support-2.jpg');min-height:320px",
  "background-image:url('/assets/field-tech-detail.jpg');min-height:320px"
)

[System.IO.File]::WriteAllText($idxPath, $idx, [System.Text.UTF8Encoding]::new($false))
Write-Host "index.html updated"

# --- solutions.html ---
$solPath = Join-Path $root "solutions.html"
$sol = [System.IO.File]::ReadAllText($solPath)
$sol = $sol.Replace(
  "--hero-image: url('/assets/video-surveillance.jpg')",
  "--hero-image: url('/assets/field-camera-exterior.jpg')"
)
$sol = $sol.Replace(
  'id="video-surveillance">' + "`n" + '            <a href="/services/video-surveillance" class="ind-panel-media" style="background-image:url(''/assets/video-surveillance.jpg'')"',
  'id="video-surveillance">' + "`n" + '            <a href="/services/video-surveillance" class="ind-panel-media" style="background-image:url(''/assets/product-camera-dome.jpg'')"'
)
[System.IO.File]::WriteAllText($solPath, $sol, [System.Text.UTF8Encoding]::new($false))
Write-Host ("solutions: exterior-hero={0} product-panel={1}" -f ($sol -match 'field-camera-exterior'), ($sol -match 'product-camera-dome'))

# --- industries.html ---
$indPath = Join-Path $root "industries.html"
$ind = [System.IO.File]::ReadAllText($indPath)
$ind = $ind.Replace(
  "--hero-image: url('/assets/hero-security.jpg')",
  "--hero-image: url('/assets/field-camera-exterior.jpg')"
)
$ind = $ind.Replace(
  'id="industrial">' + "`n" + '            <a href="/industries/industrial" class="ind-panel-media" style="background-image:url(''/assets/warehouse.jpg'')"',
  'id="industrial">' + "`n" + '            <a href="/industries/industrial" class="ind-panel-media" style="background-image:url(''/assets/field-warehouse-wide.jpg'')"'
)
[System.IO.File]::WriteAllText($indPath, $ind, [System.Text.UTF8Encoding]::new($false))
Write-Host ("industries: exterior-hero={0} warehouse-wide={1}" -f ($ind -match 'field-camera-exterior'), ($ind -match 'field-warehouse-wide'))

# --- industrial detail ---
$ip = Join-Path $root "industries\industrial.html"
$t = [System.IO.File]::ReadAllText($ip)
$t2 = $t.Replace("url('/assets/warehouse.jpg')", "url('/assets/field-warehouse-wide.jpg')")
[System.IO.File]::WriteAllText($ip, $t2, [System.Text.UTF8Encoding]::new($false))
Write-Host ("industrial detail replacements: {0}" -f ([regex]::Matches($t2, 'field-warehouse-wide')).Count)

# --- video service: product sidebar ---
$vp = Join-Path $root "services\video-surveillance.html"
$v = [System.IO.File]::ReadAllText($vp)
$v = $v.Replace('src="/assets/video-2.jpg"', 'src="/assets/product-camera-turret.jpg"')
[System.IO.File]::WriteAllText($vp, $v, [System.Text.UTF8Encoding]::new($false))
Write-Host "video service sidebar product updated"

# --- access service sidebar ---
$ap = Join-Path $root "services\access-control.html"
$a = [System.IO.File]::ReadAllText($ap)
$a = $a.Replace('src="/assets/door-access.jpg"', 'src="/assets/access-2.jpg"')
# keep door-access as hero via access-control.jpg already
[System.IO.File]::WriteAllText($ap, $a, [System.Text.UTF8Encoding]::new($false))
Write-Host "access page touched"

Write-Host "DONE"
