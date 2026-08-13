# Unique content for each industry detail page (problem-led, not generic service essays).

$r = @{ href = "/industries/retail-commercial"; title = "Retail & Commercial"; text = "Stores, shops, offices" }
$k = @{ href = "/industries/k-12-education"; title = "K-12 Education"; text = "Schools and campuses" }
$h = @{ href = "/industries/higher-education"; title = "Higher Education"; text = "Colleges and universities" }
$l = @{ href = "/industries/law-enforcement"; title = "Law Enforcement"; text = "Stations and corrections" }
$i = @{ href = "/industries/industrial"; title = "Industrial"; text = "Yards, docks, plants" }

$IndustryPages = @(
  @{
    slug = "retail-commercial"
    title = "Retail & Commercial Security Systems | JCS Safety Systems"
    desc = "Reduce shrinkage, secure back doors, and protect inventory with retail video, access control, and after-hours AI alerts. South Mississippi stores and commercial sites."
    canonical = "https://jcssafetysystems.com/industries/retail-commercial"
    image = "/assets/retail-store.jpg"
    keywords = "retail security cameras Mississippi, commercial access control, store loss prevention, shoplifting cameras South Mississippi"
    crumb = "Retail & Commercial"
    kicker = "Retail & commercial"
    h1 = "Stop shrinkage before it hits the bottom line"
    lead = "Shoplifting, propped exits, after-hours inventory loss, and cash-room risk are retail problems  -  not generic camera problems. We design coverage around how your store actually sells, stocks, and locks up."
    outcomes = @(
      @{ title = "Sales floor + POS clarity"; text = "See high-value displays, registers, and customer flow when disputes or loss happen." }
      @{ title = "After-hours intelligence"; text = "AI people and vehicle alerts when the store is closed  -  not endless false alarms." }
      @{ title = "Staff accountability"; text = "Access logs for offices, cash rooms, and stock rooms replace mystery keys." }
    )
    introTitle = "Retail security that protects margin, not just square footage"
    intro = "Competitors list the same products on every industry page. We start with loss prevention and operational friction: where merchandise walks out, which doors get propped, who needs after-hours entry, and how managers review incidents without scrubbing hours of video."
    tags = @("Loss prevention", "POS coverage", "Back-door control", "After-hours AI")
    sidebarImg = "/assets/video-surveillance.jpg"
    sidebarTitle = "Protect your store"
    sidebarText = "Free walkthrough for retail and commercial sites across South Mississippi."
    challengeTitle = "What retail operators actually fight"
    challengeLead = "Modeled after how leading brands frame retail risk  -  loss, access, operations  -  with answers tailored to your floor plan."
    pains = @(
      @{ label = "Challenge 01"; title = "High-value displays get hit first"; problem = "Shoplifters target open fixtures, endcaps, and zones staff cannot watch every second. Low-resolution or poorly aimed cameras make recovery and prosecution harder."; fix = "Priority camera placement on high-shrink aisles, entrances, and exits with footage managers can search by time and event." }
      @{ label = "Challenge 02"; title = "The back door is a profit leak"; problem = "Receiving doors and employee exits get propped for smoke breaks, deliveries, or convenience  -  and become the preferred path for internal and external theft."; fix = "Door contacts, access schedules, and cameras aimed at rear exits with alerts when doors stay open past policy." }
      @{ label = "Challenge 03"; title = "After-hours inventory disappears"; problem = "When the store is dark, break-ins and opportunistic theft happen fast. Alarms alone do not show what walked out or which vehicle pulled up."; fix = "Perimeter and lot coverage with human and vehicle detection so you get actionable notifications, not noise." }
      @{ label = "Challenge 04"; title = "Cash rooms and offices stay on keys"; problem = "Keys get copied, shared, and lost. You cannot prove who entered the office, safe room, or stock cage after a shortage."; fix = "Keyless access with time-stamped logs and schedules that match open and close  -  revoke credentials the day someone leaves." }
    )
    zoneTitle = "Coverage map for a typical retail site"
    zoneLead = "We do not carpet-bomb every corner. We put lenses and locks where loss and liability concentrate."
    zones = @(
      @{ title = "Storefront & entries"; text = "Face-forward views of who comes in, exit paths, and vestibules." }
      @{ title = "Sales floor & POS"; text = "Registers, returns, and high-value displays for disputes and shrink." }
      @{ title = "Stock & receiving"; text = "Stock rooms, cages, and dock doors where product movement is hard to watch." }
      @{ title = "Offices & cash"; text = "Controlled doors and logs for managers, cash rooms, and IT closets." }
      @{ title = "Rear exits"; text = "Employee doors and alley views that catch propped-open habits." }
      @{ title = "Lot & curb"; text = "Parking and vehicle approaches for smash-and-grab and after-hours events." }
    )
    solTitle = "Tools we mix for retail  -  not a copy-paste product dump"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "AI video surveillance"; text = "Live and recorded views with people and vehicle alerts and searchable events for LP reviews." }
      @{ href = "/services/access-control"; title = "Access control"; text = "Keyless entry for back rooms, offices, and multi-tenant commercial suites." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion systems"; text = "Sensors and alarms that pair with video when something opens after hours." }
      @{ href = "/services/network-cabling"; title = "Network cabling"; text = "Clean runs that keep multi-camera stores stable and ready to expand." }
      @{ href = "/services/support"; title = "Install & support"; text = "Work after close when needed. Phone help in 24 hrs · on-site in 48." }
    )
    installTitle = "Install around open-for-business hours"
    installLead = "Retail cannot shut down for a week of cabling. We stage work around your open hours, overnight windows, and delivery schedules."
    installItems = @(
      "After-close or early-morning work for sales-floor cameras"
      "Phased multi-location rollouts for chains and multi-site owners"
      "Clean cable paths that do not wreck finished retail ceilings"
      "Manager training so staff can pull clips without calling us every time"
    )
    installImg = "/assets/support.jpg"
    faqTitle = "Retail security questions"
    faqs = @(
      @{ q = "How many cameras does a retail store need?"; a = "It depends on square footage, layout, and shrink hot spots  -  not a one-size kit. We walk the store, map entrances, POS, stock, and exits, then propose coverage that matches budget and risk." }
      @{ q = "Can systems help with both external theft and employee theft?"; a = "Yes. Floor and exit coverage deters and documents external loss; stock-room, office, and access logs improve accountability inside the operation." }
      @{ q = "Do you work around store hours?"; a = "Yes. Most sales-floor installs are scheduled after close or before open so customers are not navigating ladders during peak traffic." }
      @{ q = "What if I have multiple locations?"; a = "We design for consistency across sites so managers use the same workflows, while still adjusting camera counts for each floor plan." }
    )
    related = @($k, $h, $l, $i)
    ctaTitle = "Ready to cut shrink and close the back door?"
    ctaText = "Tell us about your store layout, hours, and problem spots. We will recommend a clear mix of video, access, and alarms  -  no pressure script."
  },

  @{
    slug = "k-12-education"
    title = "K-12 School Security Systems | JCS Safety Systems"
    desc = "School security cameras, vestibule visibility, and door access schedules for K-12 campuses in South Mississippi. Designed for staff who run the building every day."
    canonical = "https://jcssafetysystems.com/industries/k-12-education"
    image = "/assets/school-campus.jpg"
    keywords = "school security cameras Mississippi, K-12 access control, campus video surveillance, school vestibule security South Mississippi"
    crumb = "K-12 Education"
    kicker = "K-12 education"
    h1 = "Safer schools staff can actually run"
    lead = "Visitor chaos at the front office, after-hours facility use, bus lots, and blind hallways demand systems administrators will use  -  not ignore. We design for the bell schedule, not a brochure."
    outcomes = @(
      @{ title = "Main-entry awareness"; text = "See who is in the vestibule and at the office before they reach students." }
      @{ title = "Doors that match the day"; text = "Access schedules that follow arrival, class changes, athletics, and lock-up." }
      @{ title = "Install without chaos"; text = "Work planned around instructional time so teaching stays the priority." }
    )
    introTitle = "School security is operational  -  not just hardware"
    intro = "District leaders need visibility and controlled entry without turning schools into fortresses no one can operate. We focus on vestibules, hallways, exterior doors, parking and bus loops, and the people who unlock and lock the building every day."
    tags = @("Vestibule focus", "Bell schedules", "Staff-friendly tools", "Campus exteriors")
    sidebarImg = "/assets/access-control.jpg"
    sidebarTitle = "Protect your campus"
    sidebarText = "Free assessment for elementary, middle, high schools, and district sites."
    challengeTitle = "Challenges unique to K-12 campuses"
    challengeLead = "Avigilon-style challenge framing  -  awareness, unauthorized access, day-to-day operations  -  written for Mississippi schools."
    pains = @(
      @{ label = "Challenge 01"; title = "Front office visitor chaos"; problem = "Parents, vendors, substitutes, and deliveries all hit the office at once. Without clear vestibule visibility, staff guess who is at the door."; fix = "Entry and vestibule cameras plus controlled main doors so office staff see and manage access before guests reach hallways." }
      @{ label = "Challenge 02"; title = "Doors that do not match the bell"; problem = "Mechanical keys and ad-hoc unlocks leave exterior doors open during athletics, after-school programs, or community events."; fix = "Access control with schedules for arrival, school day, evening events, and weekend use  -  with logs when something changes." }
      @{ label = "Challenge 03"; title = "Older buildings, blind hallways"; problem = "Additions, stairwells, and long corridors create sightline gaps that paper maps never show."; fix = "On-site walkthroughs that map real student and staff flow, then place cameras where they close the worst gaps first." }
      @{ label = "Challenge 04"; title = "Bus lots and after-hours use"; problem = "Parking lots, bus loops, and gyms host evening events when few staff are watching. Vandalism and vehicle issues show up the next morning."; fix = "Exterior and lot coverage with alerts that make sense for after-hours, not daytime playground motion spam." }
    )
    zoneTitle = "Where school security usually starts"
    zoneLead = "Priorities shift by campus, but these zones show up on almost every K-12 walkthrough."
    zones = @(
      @{ title = "Main entry & vestibule"; text = "Primary visitor path and office interface." }
      @{ title = "Hallways & commons"; text = "Traffic choke points between classes and lunch." }
      @{ title = "Exterior doors"; text = "Side doors, gym entries, and after-hours access points." }
      @{ title = "Parking & bus loop"; text = "Arrival, dismissal, and vehicle activity." }
      @{ title = "Athletics & multipurpose"; text = "Gyms, fields access, and evening events." }
      @{ title = "Admin & restricted rooms"; text = "Offices, server closets, and sensitive storage." }
    )
    solTitle = "Solutions schools actually deploy with us"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Campus video"; text = "Indoor and outdoor coverage with search tools staff can learn quickly." }
      @{ href = "/services/access-control"; title = "Door access"; text = "Schedules and credentials that replace worn key rings over time." }
      @{ href = "/services/network-cabling"; title = "Network cabling"; text = "Reliable backbone so cameras and doors stay online across the campus." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion"; text = "After-hours protection for portable buildings and district facilities." }
      @{ href = "/services/support"; title = "Training & support"; text = "We train office and facilities staff  -  then answer the phone when something changes." }
    )
    installTitle = "Install around instructional time"
    installLead = "Schools cannot pause learning for a security project. We coordinate with facilities and admin so work happens in breaks, summers, evenings, or targeted zones."
    installItems = @(
      "Summer, holiday, and after-school work windows"
      "Quiet work near classrooms during testing when required"
      "Clear documentation for facilities and SRO partners"
      "Hands-on training for the people who will live in the system"
    )
    installImg = "/assets/school-campus.jpg"
    faqTitle = "K-12 security questions"
    faqs = @(
      @{ q = "Can you work with existing school cameras?"; a = "Often yes. We assess what is worth keeping, what should be replaced, and how to improve placement and recording reliability without forcing a full rip-and-replace if it is not needed." }
      @{ q = "Do systems need to be complicated for office staff?"; a = "No. If staff will not use it, it fails. We prioritize clear live views, simple search, and access tools that match how the office already runs visitor flow." }
      @{ q = "How do you minimize classroom disruption?"; a = "We plan phases around instructional calendars, concentrate noisy work after hours when possible, and keep communication open with facilities." }
      @{ q = "What about multi-school districts?"; a = "We can standardize platforms across campuses while sizing each school to its layout, age of building, and risk priorities." }
    )
    related = @($r, $h, $l, $i)
    ctaTitle = "Talk through your campus priorities"
    ctaText = "Whether you are upgrading one vestibule or planning district-wide coverage, we will map risks and quote a practical first phase."
  },

  @{
    slug = "higher-education"
    title = "Higher Education Campus Security | JCS Safety Systems"
    desc = "Multi-building campus video, residence hall access, parking awareness, and fiber infrastructure for colleges and universities in South Mississippi."
    canonical = "https://jcssafetysystems.com/industries/higher-education"
    image = "/assets/office-lobby.jpg"
    keywords = "campus security cameras, college access control Mississippi, university video surveillance, higher education LPR parking"
    crumb = "Higher Education"
    kicker = "Higher education"
    h1 = "Campus-scale coverage that grows with you"
    lead = "Residence halls, labs, parking decks, and open pathways create sprawling risk. Security has to scale across buildings without becoming unmanageable for campus safety and IT."
    outcomes = @(
      @{ title = "Multi-building visibility"; text = "Role-based camera views for campus safety, housing, and facilities." }
      @{ title = "Parking & pathway awareness"; text = "Lot coverage and optional LPR where vehicle identity matters." }
      @{ title = "Infrastructure that lasts"; text = "Fiber and structured cabling planned for renovations and new buildings." }
    )
    introTitle = "Open campuses need layered, not generic, security"
    intro = "Higher ed is not a single storefront. Students expect openness; administrators need accountability across housing, academics, research, and events. We design for multi-stakeholder access and long-term growth  -  optimizing for how the campus actually lives."
    tags = @("Multi-building", "Housing access", "Parking / LPR", "Campus fiber")
    sidebarImg = "/assets/network-cabling.jpg"
    sidebarTitle = "Protect your campus"
    sidebarText = "Assessments for colleges, universities, and satellite sites across South Mississippi."
    challengeTitle = "Higher-ed challenges that store kits miss"
    challengeLead = "Scale, openness, and many stakeholders  -  solved with phased design, not one giant box of cameras."
    pains = @(
      @{ label = "Challenge 01"; title = "Sprawl across many buildings"; problem = "Academic halls, housing, athletics, and remote lots sit on different networks and budgets. A single-site retail design falls apart."; fix = "Phased campus plans with standardized platforms, building-by-building prioritization, and cabling that connects the footprint." }
      @{ label = "Challenge 02"; title = "Residence halls need different rules"; problem = "Housing wants convenience for residents and restriction for non-residents. Keys and shared fobs create audit nightmares."; fix = "Building and wing-level access with credentials that can be changed when residents turn over each term." }
      @{ label = "Challenge 03"; title = "Parking and pathway incidents"; problem = "Lots and walkways generate safety concerns and vehicle-related incidents that outdoor cameras alone cannot always identify."; fix = "Exterior coverage with optional license plate recognition where policy and need support it." }
      @{ label = "Challenge 04"; title = "Labs and research spaces"; problem = "Restricted labs, equipment rooms, and after-hours research create access and documentation requirements beyond classroom doors."; fix = "Segmented access zones and video on critical corridors so safety and research leadership share a clear trail." }
    )
    zoneTitle = "Campus zones we plan around"
    zoneLead = "Every campus prioritizes differently  -  these are the zones that usually drive design conversations."
    zones = @(
      @{ title = "Academic buildings"; text = "Entries, corridors, and after-hours lab approaches." }
      @{ title = "Residence halls"; text = "Perimeter doors, lobbies, and resident flow." }
      @{ title = "Parking & decks"; text = "Vehicle movement, lighting gaps, and optional LPR." }
      @{ title = "Pathways & quads"; text = "Night routes students actually walk." }
      @{ title = "Athletics & events"; text = "Venues that spike occupancy for a few hours." }
      @{ title = "Central plant / IT"; text = "Infrastructure rooms that keep the campus online." }
    )
    solTitle = "Campus toolkit  -  linked, not re-explained"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Multi-site video"; text = "AI search, live walls, and storage planned for campus scale." }
      @{ href = "/services/access-control"; title = "Building access"; text = "Role-based doors for housing, labs, and admin spaces." }
      @{ href = "/services/network-cabling"; title = "Fiber & copper"; text = "Long-run backbone between buildings and IDFs." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion"; text = "Protect high-value labs and equipment zones after hours." }
      @{ href = "/services/support"; title = "Campus support"; text = "Coordinated service with facilities and IT stakeholders." }
    )
    installTitle = "Phased installs that respect the academic calendar"
    installLead = "We work around move-in, finals, commencements, and blackout research periods. Big campuses rarely go live in one weekend  -  and should not try to."
    installItems = @(
      "Priority buildings first (housing, public safety, high-risk labs)"
      "Cabling and pathways staged with renovations when possible"
      "Coordination with IT for VLANs, storage, and user roles"
      "Documentation packages campus safety can hand to new staff"
    )
    installImg = "/assets/network.jpg"
    faqTitle = "Campus security questions"
    faqs = @(
      @{ q = "Can you phase a multi-year campus plan?"; a = "Yes. Many colleges start with highest-risk buildings and parking, then expand as budgets and renovations allow  -  on a consistent platform." }
      @{ q = "Do you work with campus IT?"; a = "Always. Camera and access systems live on the network. We plan addressing, bandwidth, and storage with the people who own infrastructure." }
      @{ q = "Is LPR required for every campus?"; a = "No. LPR is optional where parking enforcement or investigation needs justify it. We recommend it only when it solves a real campus problem." }
      @{ q = "How do you handle residence hall turnover?"; a = "Access systems should make credential changes routine. We design for semester turnover, not permanent metal keys that never get returned." }
    )
    related = @($k, $r, $l, $i)
    ctaTitle = "Map your campus priorities with us"
    ctaText = "Bring your building list and pain points. We will propose a phased design that campus safety and IT can both live with."
  },

  @{
    slug = "law-enforcement"
    title = "Law Enforcement & Corrections Security | JCS Safety Systems"
    desc = "Evidence-ready video, audit-ready access, and reliable support for law enforcement and corrections facilities in South Mississippi."
    canonical = "https://jcssafetysystems.com/industries/law-enforcement"
    image = "/assets/control-room.jpg"
    keywords = "law enforcement security systems, police station cameras, corrections access control, evidence room security Mississippi"
    crumb = "Law Enforcement"
    kicker = "Law enforcement & corrections"
    h1 = "Evidence-ready systems that stay online"
    lead = "These facilities cannot afford gaps in recording, vague access history, or long outages. Documentation, perimeter awareness, and support response times matter as much as the hardware."
    outcomes = @(
      @{ title = "Review-ready recording"; text = "High-resolution video built for investigations  -  not just deterrence posters." }
      @{ title = "Audit trails that hold up"; text = "Who entered evidence, booking, and restricted zones  -  with timestamps." }
      @{ title = "Support that shows up"; text = "Phone help within 24 hrs · on-site within 48 when systems matter most." }
    )
    introTitle = "Public safety facilities need reliability first"
    intro = "We emphasize situational awareness, controlled interiors, and systems officers can trust under pressure. For JCS that means clean installs, dependable recording, and support SLAs  -  not marketing jargon."
    tags = @("Evidence rooms", "Perimeter awareness", "Access audits", "Uptime focus")
    sidebarImg = "/assets/control-room.jpg"
    sidebarTitle = "Secure your facility"
    sidebarText = "Consultations for stations, detention, and public safety facilities."
    challengeTitle = "Challenges for stations and secured facilities"
    challengeLead = "When video is evidence and doors protect sensitive spaces, generic commercial kits are not enough."
    pains = @(
      @{ label = "Challenge 01"; title = "Footage that will not hold up"; problem = "Low quality, short retention, or unreliable recorders waste investigative time and weaken cases."; fix = "Proper placement, resolution, and recording design so reviews are clear and exportable when needed." }
      @{ label = "Challenge 02"; title = "Evidence and restricted rooms"; problem = "Shared keys and informal access to evidence, armories, and interview spaces create chain-of-custody risk."; fix = "Access control with detailed logs and limited credentials for high-sensitivity doors." }
      @{ label = "Challenge 03"; title = "Perimeter and lobby pressure"; problem = "Public lobbies, sally ports, and outdoor perimeters mix public access with secured operations."; fix = "Zoned video and door control that keep public areas open while locking down operational spaces." }
      @{ label = "Challenge 04"; title = "Downtime is unacceptable"; problem = "A dark recorder or dead door controller is an operational incident  -  not a ticket for next week."; fix = "Support commitments (phone within 24 hrs, on-site within 48) plus warranties and proactive maintenance options." }
    )
    zoneTitle = "Critical zones in public safety facilities"
    zoneLead = "Exact layouts vary; these zones almost always drive the design conversation."
    zones = @(
      @{ title = "Public lobby"; text = "Who enters and how staff see approaching visitors." }
      @{ title = "Secure interior"; text = "Corridors and doors separating public from operations." }
      @{ title = "Evidence & property"; text = "Controlled entry with audit-ready history." }
      @{ title = "Interview / holding"; text = "Clear recording angles where policy requires coverage." }
      @{ title = "Perimeter & parking"; text = "Vehicle and pedestrian approaches to the facility." }
      @{ title = "Server / security room"; text = "Protected infrastructure that keeps systems recording." }
    )
    solTitle = "What we deploy for public safety sites"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Investigative video"; text = "Reliable recording, search, and export workflows for review." }
      @{ href = "/services/access-control"; title = "Audit-ready access"; text = "Credentialed doors for evidence, secure corridors, and staff areas." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion zones"; text = "Layered alarms for perimeters and sensitive rooms." }
      @{ href = "/services/network-cabling"; title = "Hardened cabling"; text = "Clean, documented runs for mission-critical devices." }
      @{ href = "/services/support"; title = "Priority support"; text = "Response windows built for facilities that cannot wait." }
    )
    installTitle = "Install with chain-of-command and continuity in mind"
    installLead = "We coordinate with facility leadership so public hours, secure zones, and ongoing operations stay protected during the upgrade."
    installItems = @(
      "Work scheduled around facility operations and security protocols"
      "Clear as-built documentation for future staff and audits"
      "Testing of recording, retention, and door behavior before handoff"
      "Training for the supervisors who will export and review footage"
    )
    installImg = "/assets/security-guard.jpg"
    faqTitle = "Public safety FAQs"
    faqs = @(
      @{ q = "Can you improve an aging station system without full replacement?"; a = "Often we can phase upgrades  -  replace failing recorders or critical cameras first, then expand coverage and access control as budget allows." }
      @{ q = "Do you support evidence-room access control?"; a = "Yes. Restricted doors with individual credentials and time-stamped logs are a common request for stations and corrections environments." }
      @{ q = "What are your support response times?"; a = "Phone support within 24 hours and on-site service within 48 hours for covered issues  -  critical when systems support public safety operations." }
      @{ q = "Will staff be trained on export and review?"; a = "Yes. A system is only useful if supervisors can find and export video when needed. Training is part of go-live." }
    )
    related = @($i, $k, $h, $r)
    ctaTitle = "Discuss your facility requirements"
    ctaText = "Tell us about recording needs, secure doors, and support expectations. We will design for reliability first."
  },

  @{
    slug = "industrial"
    title = "Industrial Security Systems | Yards, Docks & Plants | JCS Safety Systems"
    desc = "Outdoor-rated video, gate access, and long-run fiber for industrial yards, warehouses, docks, and plants across South Mississippi."
    canonical = "https://jcssafetysystems.com/industries/industrial"
    image = "/assets/warehouse.jpg"
    keywords = "industrial security cameras, warehouse video surveillance Mississippi, yard gate access control, outdoor LPR docks"
    crumb = "Industrial"
    kicker = "Industrial"
    h1 = "Rugged visibility for yards, docks, and production"
    lead = "Theft of materials and equipment, liability in busy vehicle zones, and blind spots across large outdoor footprints need outdoor-rated systems and cabling that survives the environment."
    outcomes = @(
      @{ title = "Yard & dock awareness"; text = "See trucks, trailers, and material movement where most loss happens." }
      @{ title = "Fewer false alarms"; text = "People and vehicle detection tuned for industrial motion  -  not empty noise." }
      @{ title = "Long-run infrastructure"; text = "Fiber and outdoor pathways that keep distant cameras online." }
    )
    introTitle = "Industrial sites fail generic indoor kits"
    intro = "Warehouses and plants need distance, weather resistance, vehicle context, and cabling that crosses yards without failing. We design for gates, docks, storage piles, and production floors  -  protect people and assets without stopping operations."
    tags = @("Outdoor-rated", "Gate & dock", "Vehicle awareness", "Fiber runs")
    sidebarImg = "/assets/industrial-yard.jpg"
    sidebarTitle = "Protect your site"
    sidebarText = "Walkthroughs for warehouses, plants, logistics yards, and outdoor storage."
    challengeTitle = "Industrial problems that demand outdoor design"
    challengeLead = "Different physics than a store or school: distance, weather, vehicles, and shift work."
    pains = @(
      @{ label = "Challenge 01"; title = "Materials and equipment walk off"; problem = "Copper, tools, trailers, and staged materials sit in yards that nobody can watch all shift."; fix = "Yard cameras with the right lenses, heights, and recording so you can identify activity and vehicles  -  not just see a blob." }
      @{ label = "Challenge 02"; title = "Docks and gates are chaos points"; problem = "Trucks stack up, seals break, and unauthorized vehicles slip into active zones."; fix = "Dock and gate coverage, optional LPR, and access control on pedestrian and vehicle gates where it fits operations." }
      @{ label = "Challenge 03"; title = "Indoor kits die outdoors"; problem = "Consumer-grade cameras and poor enclosures fail in heat, rain, dust, and vibration."; fix = "Outdoor-rated hardware, proper mounts, and pathways planned for the environment  -  not leftover retail stock." }
      @{ label = "Challenge 04"; title = "Distance kills weak cabling"; problem = "Cameras at the far fence line drop offline when someone daisy-chained copper past its limit."; fix = "Fiber and structured runs designed for site scale, with room to add cameras as the yard grows." }
    )
    zoneTitle = "Industrial coverage priorities"
    zoneLead = "We size systems to your footprint  -  these zones appear on most plant and warehouse assessments."
    zones = @(
      @{ title = "Perimeter & fence lines"; text = "Approach detection and after-hours awareness." }
      @{ title = "Gates & guard paths"; text = "Vehicle and pedestrian control points." }
      @{ title = "Docks & staging"; text = "Loading activity and material handoffs." }
      @{ title = "Yards & storage"; text = "Equipment, trailers, and bulk materials." }
      @{ title = "Production floors"; text = "Interior process areas and high-value equipment." }
      @{ title = "Offices & IT"; text = "Admin entries and network rooms that run the site." }
    )
    solTitle = "Industrial-ready building blocks"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Outdoor & AI video"; text = "People and vehicle detection, LPR options, and durable cameras for large sites." }
      @{ href = "/services/access-control"; title = "Gate & door access"; text = "Control pedestrian doors and vehicle gates with logs shifts can audit." }
      @{ href = "/services/network-cabling"; title = "Fiber & long runs"; text = "Infrastructure that reaches the fence line without dropouts." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion"; text = "Layered alarms for buildings, cages, and critical rooms." }
      @{ href = "/services/support"; title = "Site support"; text = "Service planned around production shifts and critical uptime." }
    )
    installTitle = "Install around production  -  not against it"
    installLead = "Shutdown windows are rare. We plan lifts, trenching or aerial pathways, and testing around shifts, shipping peaks, and safety rules."
    installItems = @(
      "Coordination with EHS and plant leadership on work zones"
      "Aerial or underground pathways chosen for durability"
      "Phased camera go-lives so operations keep moving"
      "Training for supervisors on each shift who need live views"
    )
    installImg = "/assets/warehouse.jpg"
    faqTitle = "Industrial security questions"
    faqs = @(
      @{ q = "Can you cover large outdoor yards effectively?"; a = "Yes  -  with the right camera types, mounting heights, and backbone cabling. Indoor dome kits pointed at a fence line are not a yard solution." }
      @{ q = "Do you offer license plate recognition?"; a = "LPR is available where gate or lot workflows need vehicle identity. We recommend it when it solves a real operational problem, not as a default upsell." }
      @{ q = "How do you handle multi-shift sites?"; a = "We schedule disruptive work around production when possible and train more than one supervisor so nights and weekends are not blind." }
      @{ q = "What about expanding as the site grows?"; a = "We plan spare capacity in pathways and recording so new buildings or yard sections can add cameras without starting over." }
    )
    related = @($r, $l, $k, $h)
    ctaTitle = "Walk the yard with us"
    ctaText = "Show us the fence line, docks, and problem corners. We will design coverage that survives the environment and the schedule."
  }
)
