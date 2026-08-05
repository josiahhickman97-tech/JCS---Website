# JCS Safety Systems — Website

Modern multi-page marketing site for **JCS Safety Systems**, built from the content wireframe in `JCS Website - Content Doc.txt` and research from [jcsprotects.com](https://jcsprotects.com).

## Site map / flow

```
Home
├── Solutions
│   ├── Video Surveillance (Surveillance Security)
│   ├── Access Control
│   ├── Network Cabling
│   ├── Intrusion Systems
│   └── Expert Support
├── Industries
│   ├── Retail & Commercial   ← full wireframe from content doc
│   ├── K-12 Education
│   ├── Higher Education
│   ├── Law Enforcement & Corrections
│   └── Industrial
├── About
└── Contact (FormSubmit → Sales@jcsprotects.com)
```

### Industry page structure (from your content doc)

1. **Industry header** — headline, subhead, body, CTA, hero image  
2. **Challenges & solutions** — 3 challenge blocks with photos  
3. **Services** — Surveillance, Access Control, Network Cabling  
4. **Testimonials** — customer quotes  
5. **FAQ** — industry-specific questions  
6. **Contact CTA**

Retail Commercial body copy, challenges, services, and FAQs match your content document. Other industries use the same layout with tailored copy.

## Preview

Open `index.html` in a browser, or:

```powershell
cd C:\Users\josia\jcs-safety-systems-website
python -m http.server 8080
```

Visit http://localhost:8080

## Brand assets

- Logo: `assets/logo.png` (your official JCS logo)
- Colors: navy brand blue `#1a2f6b` / `#244a8a`
- Contact: **(601) 337-6852** · **Sales@jcsprotects.com**

## Contact form

Uses [FormSubmit](https://formsubmit.co) AJAX to `Sales@jcsprotects.com`.  
**First live submission** sends a confirmation email to that address — click activate once. After that, submissions arrive in the inbox.

## Deploy

Upload the entire folder (except `_build-industries.ps1` and `_industries-data.json` if you want) to:

- GoDaddy / cPanel `public_html`
- Netlify, Vercel, or Cloudflare Pages

Point **jcsprotects.com** at the host.

## Regenerating industry pages

If you edit `_industries-data.json`:

```powershell
powershell -ExecutionPolicy Bypass -File .\_build-industries.ps1
```

## Optional next steps

1. Replace stock photos with real JCS install photos  
2. Add a public street address on Contact when ready  
3. Confirm FormSubmit activation email for Sales@jcsprotects.com  
4. Add Google Business / Analytics tags if desired  
