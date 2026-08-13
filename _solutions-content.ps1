# Unique problem-led content for each solution / service detail page.
# ASCII hyphens only (avoid em-dash encoding issues in PowerShell).

$v = @{ href = "/services/video-surveillance"; title = "Video Surveillance"; text = "AI video, LPR, searchable footage" }
$a = @{ href = "/services/access-control"; title = "Access Control"; text = "Keyless entry, schedules, logs" }
$n = @{ href = "/services/network-cabling"; title = "Network Cabling"; text = "Cat6, fiber, structured wiring" }
$i = @{ href = "/services/intrusion-systems"; title = "Intrusion Systems"; text = "Sensors, alarms, early alerts" }
$s = @{ href = "/services/support"; title = "Expert Support"; text = "Install, training, 24/48 response" }

$SolutionPages = @(
  @{
    slug = "video-surveillance"
    title = "Video Surveillance Systems | AI Cameras and LPR | JCS Safety Systems"
    desc = "AI video surveillance with people and vehicle detection, LPR, and searchable footage. Designed and installed for Mississippi facilities."
    canonical = "https://jcssafetysystems.com/services/video-surveillance"
    image = "/assets/video-surveillance.jpg"
    keywords = "security cameras Mississippi, AI video surveillance, LPR cameras Mississippi, commercial CCTV install"
    crumb = "Video Surveillance"
    kicker = "Video surveillance"
    h1 = "See more. Search less. Respond faster."
    lead = "Blind spots, unsearchable recordings, and motion alerts that cry wolf leave you with cameras that look good on a quote but fail when something happens. We design video systems people will actually use."
    outcomes = @(
      @{ title = "Coverage that matches the site"; text = "Camera maps built from walkthroughs - not a one-size kit hanging in the wrong corners." }
      @{ title = "Alerts that mean something"; text = "People and vehicle AI cuts empty motion noise so after-hours notices are actionable." }
      @{ title = "Footage you can find"; text = "Searchable events and clear recordings for investigations, disputes, and ops reviews." }
    )
    introTitle = "Video that works when the incident is real"
    intro = "Leading brands sell cameras as visibility and faster response. We do the same for Mississippi sites: placement first, then analytics, LPR where plates matter, and recording that holds up when you need proof - not a wall of unusable clips."
    tags = @("AI detection", "LPR options", "Cloud or on-site", "Mobile live view")
    sidebarImg = "/assets/video-2.jpg"
    sidebarTitle = "Map your cameras"
    sidebarText = "Free assessment and camera layout for your property and budget."
    challengeTitle = "Problems camera systems usually create"
    challengeLead = "If your current cameras feel useless, it is usually design - not a missing brand name."
    pains = @(
      @{ label = "Challenge 01"; title = "Blind spots where risk lives"; problem = "Cameras point at empty floor while the back door, POS, or lot approach stays dark. Installers filled a count, not a risk map."; fix = "On-site placement plan for entrances, high-value zones, lots, and sightlines that match how the facility actually runs." }
      @{ label = "Challenge 02"; title = "Hours of video, zero search"; problem = "When something happens, staff scrub timelines hoping to find a 10-second moment. By then the window for action is gone."; fix = "AI event search, clear retention design, and exports supervisors can use without a specialist on call." }
      @{ label = "Challenge 03"; title = "Motion alerts that cry wolf"; problem = "Trees, headlights, and shadows train everyone to ignore the phone. Real after-hours activity gets lost in the noise."; fix = "People and vehicle detection tuned for the environment so alerts earn attention." }
      @{ label = "Challenge 04"; title = "Vehicles without identity"; problem = "Lot and gate cameras show a car shape - not a plate you can match to an incident window or investigation."; fix = "LPR cameras where lighting, angle, and lane geometry support plate capture - common for law enforcement, campuses, and controlled lots." }
    )
    zoneTitle = "What a strong video design usually includes"
    zoneLead = "Capabilities we mix based on the site - full product detail stays on this page, not copy-pasted across industries."
    zones = @(
      @{ title = "Indoor and outdoor cameras"; text = "Coverage for lobbies, halls, sales floors, yards, and exteriors." }
      @{ title = "AI people and vehicle detection"; text = "Smarter alerts than raw motion for after-hours and busy sites." }
      @{ title = "License plate recognition"; text = "Optional LPR at gates, parking, and facility approaches." }
      @{ title = "Live and recorded access"; text = "Phone and desktop views with control over who sees which cameras." }
      @{ title = "Cloud or on-site recording"; text = "Architecture matched to IT, bandwidth, and retention needs." }
      @{ title = "Export-ready review"; text = "Footage structured for investigations, disputes, and training." }
    )
    solTitle = "Pairs cleanly with the rest of the stack"
    sols = @(
      @{ href = "/services/access-control"; title = "Access control"; text = "See who opened a door - then pull the camera that covers that entry." }
      @{ href = "/services/network-cabling"; title = "Network cabling"; text = "Reliable backbone so multi-camera systems stay online." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion systems"; text = "Alarm events that can be verified with video." }
      @{ href = "/services/support"; title = "Install and support"; text = "Placement, testing, training, and response when something fails." }
      @{ href = "/industries"; title = "By industry"; text = "How video is applied for retail, schools, campuses, LE, and industrial." }
    )
    installTitle = "Install that respects how the site operates"
    installLead = "We stage camera work around open hours, instructional time, and production when possible - then train the people who will pull clips."
    installItems = @(
      "Site walk and camera map before hardware is ordered"
      "Wiring and mounts planned with network capacity in mind"
      "After-close or low-traffic windows when customer-facing areas are involved"
      "Handoff training for live view, search, LPR events, and exports"
    )
    installImg = "/assets/support.jpg"
    faqTitle = "Video surveillance FAQs"
    faqs = @(
      @{ q = "What types of cameras do you install?"; a = "Indoor and outdoor cameras selected for the environment - wired when reliability matters most, with wireless or cellular options when wiring is not practical. We also deploy LPR where plate capture is a real requirement." }
      @{ q = "Do systems include AI analytics?"; a = "Yes. Many systems detect people and vehicles to reduce false alerts. Enhanced analytics and LPR are matched to the site during design, not bolted on as a default upsell." }
      @{ q = "Can I view cameras from my phone?"; a = "Yes. Secure apps and browser access let managers view live and recorded video, with permission control over who can access which cameras." }
      @{ q = "Cloud or local recording - which is better?"; a = "It depends on bandwidth, IT policy, multi-site needs, and retention. We recommend the architecture that fits the facility - sometimes hybrid." }
      @{ q = "What about support after install?"; a = "Phone help within 24 hours and on-site within 48 hours for covered issues, plus training so your team is not stuck waiting on us for every clip." }
    )
    related = @($a, $n, $i, $s)
    ctaTitle = "Ready for cameras that earn their keep?"
    ctaText = "Tell us about the property, problem spots, and who needs access to video. We will propose a clear camera plan and quote."
  },

  @{
    slug = "access-control"
    title = "Access Control Systems | Keyless Entry and Audit Logs | JCS Safety Systems"
    desc = "Keyless access control with schedules, credentials you can revoke, and time-stamped logs for doors and restricted areas across Mississippi."
    canonical = "https://jcssafetysystems.com/services/access-control"
    image = "/assets/access-control.jpg"
    keywords = "access control Mississippi, keyless entry systems, door access control install, commercial card access Mississippi"
    crumb = "Access Control"
    kicker = "Access control"
    h1 = "Replace mystery keys with proof of who entered"
    lead = "Copied keys, propped doors, and no audit trail make restricted rooms and after-hours entry a guessing game. Modern access control gives schedules, credentials you can revoke, and logs that hold up."
    outcomes = @(
      @{ title = "Revoke access same day"; text = "When someone leaves, their credential dies - no rekeying every lock on the ring." }
      @{ title = "Schedules that match reality"; text = "Doors follow open hours, bells, shifts, and weekend events instead of staying unlocked all day." }
      @{ title = "Audit-ready history"; text = "Time-stamped entry events for cash rooms, evidence rooms, labs, and offices." }
    )
    introTitle = "Doors should answer who, when, and whether they should have been open"
    intro = "Avigilon-style access messaging focuses on flexible credentials, remote management, and visibility. We deliver that for local facilities: cloud or on-premise systems, keyless entry, and logs that pair with video when you need the full story."
    tags = @("Keyless credentials", "Door schedules", "Audit logs", "Cloud or on-prem")
    sidebarImg = "/assets/door-access.jpg"
    sidebarTitle = "Secure your doors"
    sidebarText = "Free walkthrough for entries, restricted rooms, and multi-door sites."
    challengeTitle = "Why keys and ad-hoc unlocks fail"
    challengeLead = "Access control is not a gadget - it is accountability for the doors that matter."
    pains = @(
      @{ label = "Challenge 01"; title = "Keys multiply and never come back"; problem = "Staff turnover, contractors, and spare keys leave you unsure who can still walk into the building."; fix = "Individual credentials with fast revoke and clear permission levels by door or zone." }
      @{ label = "Challenge 02"; title = "Doors stay unlocked for convenience"; problem = "Someone props a back door or unlocks early for deliveries - and security policy dies for the rest of the day."; fix = "Schedules and door status that match operations, with video or contacts when doors stay open past policy." }
      @{ label = "Challenge 03"; title = "Restricted rooms without a paper trail"; problem = "Cash rooms, medicine storage, evidence, IT closets, and labs get shared keys and informal access."; fix = "Limited credentials and time-stamped logs for the doors that create real liability." }
      @{ label = "Challenge 04"; title = "Multi-building chaos"; problem = "Schools, campuses, and multi-site operators need different rules per building without five different systems."; fix = "Scalable access design with consistent management for staff who run more than one door set." }
    )
    zoneTitle = "What access control typically covers"
    zoneLead = "We size readers, controllers, and credentials to your doors - not a generic package."
    zones = @(
      @{ title = "Main entries and vestibules"; text = "Control who reaches the interior during and after public hours." }
      @{ title = "Staff and rear doors"; text = "Stop the propped-open habit with credentials and schedules." }
      @{ title = "Restricted interior rooms"; text = "Cash, evidence, labs, server closets, and manager offices." }
      @{ title = "Gates and vehicle points"; text = "Where pedestrian or vehicle gates need credentialed entry." }
      @{ title = "Schedules and holidays"; text = "Auto lock and unlock patterns that match how you operate." }
      @{ title = "Reporting and audits"; text = "Who entered, when, and which credential was used." }
    )
    solTitle = "Works best when paired with"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Video surveillance"; text = "Visual verification at the same doors access is controlling." }
      @{ href = "/services/network-cabling"; title = "Network cabling"; text = "Stable connectivity for controllers and cloud-managed systems." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion systems"; text = "Layer after-hours protection with door and zone sensors." }
      @{ href = "/services/support"; title = "Install and support"; text = "Door hardware coordination, testing, and staff training." }
      @{ href = "/industries"; title = "By industry"; text = "How access looks for retail, K-12, campuses, LE, and industrial." }
    )
    installTitle = "Door work coordinated with operations"
    installLead = "Readers, strikes, and controllers are installed with minimal disruption - and with training so office and facilities staff can manage credentials day to day."
    installItems = @(
      "Door survey for hardware, power, and network needs"
      "Credential plan for staff, contractors, and temporary access"
      "Testing of schedules, fail modes, and lockdown behavior where required"
      "Admin training for adding, revoking, and reporting"
    )
    installImg = "/assets/access-2.jpg"
    faqTitle = "Access control FAQs"
    faqs = @(
      @{ q = "Cloud or on-premise access control?"; a = "Both are options. Cloud suits multi-site remote management; on-premise fits certain IT and policy needs. We recommend based on doors, users, and who will administer the system." }
      @{ q = "Can we keep some existing door hardware?"; a = "Often yes. We assess locks, frames, and power before specifying what to reuse versus replace." }
      @{ q = "How fast can we remove a former employee?"; a = "With electronic credentials, revoke is typically immediate in the software - far faster and cleaner than collecting metal keys." }
      @{ q = "Does access integrate with cameras?"; a = "Yes. Pairing access events with nearby cameras is one of the highest-value combinations for investigations and daily operations." }
      @{ q = "Do you train our staff?"; a = "Yes. If administrators cannot manage credentials confidently, the system fails. Training is part of go-live." }
    )
    related = @($v, $n, $i, $s)
    ctaTitle = "Ready to stop managing keys?"
    ctaText = "List the doors that matter and who needs access. We will propose credentials, schedules, and a clear install plan."
  },

  @{
    slug = "network-cabling"
    title = "Network Cabling | Cat6 and Fiber Install | JCS Safety Systems"
    desc = "Structured Cat6 and fiber network cabling for security cameras, access control, and business networks across Mississippi."
    canonical = "https://jcssafetysystems.com/services/network-cabling"
    image = "/assets/network-cabling.jpg"
    keywords = "network cabling Mississippi, Cat6 install, fiber optic cabling Mississippi, structured cabling security cameras"
    crumb = "Network Cabling"
    kicker = "Network cabling"
    h1 = "The backbone every camera and door depends on"
    lead = "Great security hardware on weak cabling drops offline, chokes bandwidth, and forces fragile wireless workarounds. We install Cat6 and fiber pathways built for the load you have now - and the expansion coming next."
    outcomes = @(
      @{ title = "Stable camera and door networks"; text = "Runs designed for power, distance, and bandwidth - not daisy-chained leftovers." }
      @{ title = "Distance without dropouts"; text = "Fiber and proper copper design for yards, campuses, and multi-building sites." }
      @{ title = "Room to grow"; text = "Pathways and capacity planned so adding cameras or APs does not mean starting over." }
    )
    introTitle = "Infrastructure is a security decision"
    intro = "Every AI camera, LPR unit, and access controller lives or dies on the network path behind it. We treat cabling as part of the security design - clean, tested, documented - so the rest of the stack has a chance to perform."
    tags = @("Cat6", "Fiber", "Long runs", "Tested pathways")
    sidebarImg = "/assets/network.jpg"
    sidebarTitle = "Plan your infrastructure"
    sidebarText = "Assessments for security-grade cabling and multi-building runs."
    challengeTitle = "What bad cabling costs you later"
    challengeLead = "Cabling problems show up as 'camera issues' months after a cheap install."
    pains = @(
      @{ label = "Challenge 01"; title = "Cameras drop at the far end"; problem = "Copper pushed past distance limits or poor terminations cause intermittent devices that waste service calls."; fix = "Correct media choice (Cat6 vs fiber), tested terminations, and runs within design limits." }
      @{ label = "Challenge 02"; title = "Wireless as a permanent plan"; problem = "Wi-Fi cameras and temporary links become the default and then fail in weather, interference, or dense walls."; fix = "Prefer structured wired paths for fixed security devices; use wireless only where it is the right tool." }
      @{ label = "Challenge 03"; title = "No path for the next project"; problem = "Today's install fills every conduit and leaves no spare for next year's cameras or doors."; fix = "Pathways and spare capacity planned with growth in mind - especially on industrial and campus sites." }
      @{ label = "Challenge 04"; title = "Messy undocumented work"; problem = "Future techs cannot find IDs, patch fields, or which drop feeds which camera."; fix = "Labeled, documented structured cabling with clean terminations and as-builts when the job needs them." }
    )
    zoneTitle = "What we install"
    zoneLead = "Media and pathways matched to the facility - security first, business network ready."
    zones = @(
      @{ title = "Category cabling (Cat6 and related)"; text = "Horizontal runs for cameras, readers, APs, and workstations." }
      @{ title = "Fiber optic backbone"; text = "Building-to-building and long outdoor spans." }
      @{ title = "IDFs and patch fields"; text = "Organized termination points techs can service." }
      @{ title = "Outdoor and aerial pathways"; text = "Yards, docks, and campus links that survive the environment." }
      @{ title = "Testing and certification"; text = "Verification so performance is not a guess." }
      @{ title = "Expansion-ready design"; text = "Spare capacity for the next camera or door run." }
    )
    solTitle = "Cabling unlocks"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Video surveillance"; text = "Multi-camera systems need clean, high-bandwidth paths." }
      @{ href = "/services/access-control"; title = "Access control"; text = "Controllers and readers stay online with proper infrastructure." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion systems"; text = "Reliable device connectivity across the building." }
      @{ href = "/services/support"; title = "Install and support"; text = "Clean installs and serviceable documentation." }
      @{ href = "/industries/industrial"; title = "Industrial sites"; text = "Long outdoor runs and yard connectivity." }
    )
    installTitle = "Cabling installed around operations"
    installLead = "We plan pathways, lifts, and cutovers so production, classes, and customers are disrupted as little as possible."
    installItems = @(
      "Pathway survey before pulling cable"
      "Coordination with facilities and IT when shared spaces are involved"
      "Testing after termination - not assume-and-leave"
      "Labels and documentation that match the as-built reality"
    )
    installImg = "/assets/network-2.jpg"
    faqTitle = "Network cabling FAQs"
    faqs = @(
      @{ q = "Do you only cable for security systems?"; a = "Security is our focus, but structured cabling often supports APs, phones, and business drops in the same design when it makes sense." }
      @{ q = "When do I need fiber instead of copper?"; a = "Long distances, building-to-building links, outdoor spans, and high-bandwidth backbones are common fiber use cases. We specify based on length and load." }
      @{ q = "Can you fix a messy existing closet?"; a = "Often yes - cleanup, re-termination, and documentation can stabilize devices without a full rebuild." }
      @{ q = "Will cabling support PoE cameras?"; a = "We design for power and distance requirements of modern PoE cameras and related devices." }
      @{ q = "How do you minimize downtime?"; a = "Phased pulls, after-hours work when needed, and clear cutover plans for active networks." }
    )
    related = @($v, $a, $i, $s)
    ctaTitle = "Need a backbone that will not fail the cameras?"
    ctaText = "Tell us about the site size, outdoor runs, and what you are connecting. We will recommend media, pathways, and a clean install plan."
  },

  @{
    slug = "intrusion-systems"
    title = "Intrusion and Alarm Systems | JCS Safety Systems"
    desc = "Intrusion detection and alarm systems with sensors, zones, and alerts that pair with video for after-hours protection in Mississippi."
    canonical = "https://jcssafetysystems.com/services/intrusion-systems"
    image = "/assets/intrusion-systems.jpg"
    keywords = "intrusion alarm systems Mississippi, commercial burglar alarm, door sensors, after hours security Mississippi"
    crumb = "Intrusion Systems"
    kicker = "Intrusion systems"
    h1 = "Know the moment something opens after hours"
    lead = "Cameras alone do not always wake anyone. Sensors, zones, and alerts give you the early signal - especially when paired with video so you can verify before you act."
    outcomes = @(
      @{ title = "After-hours awareness"; text = "Doors, motions, and zones that fire when the building should be quiet." }
      @{ title = "Fewer ignored alarms"; text = "Zone design and tuning aimed at real events - not constant false trips." }
      @{ title = "Video-ready alerts"; text = "Alarm events that make sense next to cameras for faster verification." }
    )
    introTitle = "Intrusion fills the gap between deterrence and response"
    intro = "Johnson Controls and other leaders treat intrusion as a layer in a full security stack - not a standalone beeping box. We design sensors and zones for how the building is used after close, then connect that signal to people who can act."
    tags = @("Door contacts", "Motion zones", "After-hours alerts", "Video pairing")
    sidebarImg = "/assets/intrusion-2.jpg"
    sidebarTitle = "Protect after hours"
    sidebarText = "Assessments for stores, schools, plants, and secured facilities."
    challengeTitle = "Why intrusion projects fail without design"
    challengeLead = "A panel full of sensors is worthless if zones are wrong or everyone ignores the alerts."
    pains = @(
      @{ label = "Challenge 01"; title = "Cameras without a wake-up call"; problem = "Incidents finish before anyone opens a live view. Recording alone is not a response plan."; fix = "Sensors and zones that notify the right people immediately when something opens or moves after hours." }
      @{ label = "Challenge 02"; title = "False alarms train people to ignore them"; problem = "Poor placement and sloppy zones create noise until nobody trusts the system."; fix = "Careful zone design, device selection, and tuning for the environment and schedule." }
      @{ label = "Challenge 03"; title = "No link to video"; problem = "An alarm goes off and responders have no quick way to see what triggered it."; fix = "Intrusion designed alongside cameras so verification is fast when both systems are in place." }
      @{ label = "Challenge 04"; title = "One-size zones for a complex building"; problem = "Warehouses, schools, and multi-tenant sites need different arming and partition logic."; fix = "Zoning and schedules matched to how areas are used - not a single all-or-nothing arming model if the site needs more." }
    )
    zoneTitle = "Typical intrusion building blocks"
    zoneLead = "Device mix depends on construction, risk, and whether staff is on-site overnight."
    zones = @(
      @{ title = "Door and window contacts"; text = "Know when perimeter openings change state." }
      @{ title = "Motion detection"; text = "Interior coverage for critical rooms and corridors." }
      @{ title = "Glass and specialized sensors"; text = "Where construction and risk call for them." }
      @{ title = "Zones and partitions"; text = "Arm areas independently when operations require it." }
      @{ title = "Notification paths"; text = "Who gets alerted and how - designed with the customer." }
      @{ title = "Video correlation"; text = "Pair events with nearby cameras when both exist." }
    )
    solTitle = "Stronger as a layered system"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Video surveillance"; text = "Verify alarm events and capture evidence." }
      @{ href = "/services/access-control"; title = "Access control"; text = "Control who should be inside when the system is armed." }
      @{ href = "/services/network-cabling"; title = "Network cabling"; text = "Reliable paths for modern IP-connected devices." }
      @{ href = "/services/support"; title = "Install and support"; text = "Correct placement, testing, and service after go-live." }
      @{ href = "/industries"; title = "By industry"; text = "After-hours risk looks different for retail vs industrial." }
    )
    installTitle = "Zones tested before you rely on them"
    installLead = "We install and walk-test devices, confirm schedules, and make sure the people who arm the system understand it."
    installItems = @(
      "Risk walk to place sensors where they earn their keep"
      "Zone programming matched to open and closed hours"
      "Walk-test and false-alarm tuning where needed"
      "User training for arming, bypasses, and response"
    )
    installImg = "/assets/intrusion-systems.jpg"
    faqTitle = "Intrusion system FAQs"
    faqs = @(
      @{ q = "Do I still need cameras if I have an alarm?"; a = "They solve different problems. Intrusion notifies; video shows what happened. Most sites that care about response want both." }
      @{ q = "Can you reduce false alarms on an existing system?"; a = "Often yes - through device placement, zone changes, schedules, and replacing problem sensors." }
      @{ q = "Do you monitor alarms 24/7?"; a = "We design and install systems and can discuss monitoring options based on your needs. Tell us how you want notifications handled during assessment." }
      @{ q = "Will intrusion work with our doors and cameras?"; a = "Yes - layered design with access and video is a core part of how we recommend systems." }
      @{ q = "What about warehouses and large open spaces?"; a = "Device choice and zone layout change for high ceilings, docks, and outdoor-adjacent spaces. We design for the building, not a house-style kit." }
    )
    related = @($v, $a, $n, $s)
    ctaTitle = "Need after-hours protection that people will trust?"
    ctaText = "Describe how the building is used at night and on weekends. We will design zones and alerts that match reality."
  },

  @{
    slug = "support"
    title = "Security System Installation and Support | JCS Safety Systems"
    desc = "Professional security system installation, training, warranties, and support - phone help within 24 hours and on-site within 48 hours across Mississippi."
    canonical = "https://jcssafetysystems.com/services/support"
    image = "/assets/support.jpg"
    keywords = "security system installation Mississippi, security camera service, access control support, 24 hour security support Mississippi"
    crumb = "Expert Support"
    kicker = "Expert support"
    h1 = "Install done right - and someone who answers after"
    lead = "The worst security systems are the ones nobody can use, nobody documents, and nobody shows up to fix when a recorder dies on a Friday. We install cleanly, train your team, and back the work with real response windows."
    outcomes = @(
      @{ title = "Install around your calendar"; text = "Work staged for store hours, school schedules, and production - not your disruption." }
      @{ title = "Phone in 24 / on-site in 48"; text = "Response commitments for when systems that protect people and assets need help." }
      @{ title = "Training that sticks"; text = "The people who arm doors and pull clips know how before we leave." }
    )
    introTitle = "Support is part of the solution - not a footnote"
    intro = "Enterprise brands talk about lifecycle service because hardware alone fails without people behind it. JCS brings that local: design, install, documentation, warranties, and service agreements so Mississippi facilities are not abandoned after go-live."
    tags = @("Professional install", "24 hr phone", "48 hr on-site", "Training")
    sidebarImg = "/assets/support-2.jpg"
    sidebarTitle = "Talk to the team"
    sidebarText = "Installation projects, service agreements, and system checkups."
    challengeTitle = "What bad service looks like on a security system"
    challengeLead = "If support is weak, even good hardware becomes shelfware - or a liability."
    pains = @(
      @{ label = "Challenge 01"; title = "Drop-and-disappear installers"; problem = "The system goes live, the crew leaves, and nobody knows passwords, camera maps, or who to call."; fix = "Documented handoff, labeled systems, and a clear support path with JCS." }
      @{ label = "Challenge 02"; title = "Nobody trained the actual users"; problem = "Office staff, facilities, and supervisors never learn search, credentials, or arming - so they stop using the system."; fix = "Hands-on training for the roles that live in the tools every week." }
      @{ label = "Challenge 03"; title = "Friday failures with Monday support"; problem = "A recorder or door controller dies and the next available appointment is days away."; fix = "Phone help within 24 hours and on-site within 48 hours for covered issues." }
      @{ label = "Challenge 04"; title = "No plan for growth or warranty"; problem = "Adds and replacements become emergency quotes with no system history."; fix = "Service relationships, warranties, and as-built knowledge that make expansion orderly." }
    )
    zoneTitle = "What support covers"
    zoneLead = "From first walkthrough to years of service - the operational side of security."
    zones = @(
      @{ title = "Design consultation"; text = "Site assessment and system mix recommendations." }
      @{ title = "Professional installation"; text = "Clean work coordinated around operations." }
      @{ title = "Testing and commissioning"; text = "Devices verified before you rely on them." }
      @{ title = "User and admin training"; text = "Live view, search, credentials, arming, exports." }
      @{ title = "Phone and on-site service"; text = "24-hour phone and 48-hour on-site response windows." }
      @{ title = "Warranties and agreements"; text = "Options to keep systems maintained over time." }
    )
    solTitle = "We support the full stack"
    sols = @(
      @{ href = "/services/video-surveillance"; title = "Video surveillance"; text = "Cameras, recording, AI, and LPR installs." }
      @{ href = "/services/access-control"; title = "Access control"; text = "Doors, credentials, and admin training." }
      @{ href = "/services/network-cabling"; title = "Network cabling"; text = "Infrastructure that keeps devices online." }
      @{ href = "/services/intrusion-systems"; title = "Intrusion systems"; text = "Zones, sensors, and after-hours protection." }
      @{ href = "/contact"; title = "Request service"; text = "New projects and existing system help." }
    )
    installTitle = "How a typical project runs with us"
    installLead = "Clear scope, scheduled work, tested systems, trained people, and a phone number that still works after the final invoice."
    installItems = @(
      "Assessment and written scope before work begins"
      "Install windows agreed with your operations calendar"
      "Commissioning checklist and customer walkthrough"
      "Support contacts and expectations documented at handoff"
    )
    installImg = "/assets/team-meeting.jpg"
    faqTitle = "Installation and support FAQs"
    faqs = @(
      @{ q = "What are your support response times?"; a = "Phone assistance within 24 hours and on-site service within 48 hours for covered issues - critical for systems that protect people, inventory, and operations." }
      @{ q = "Do you service systems you did not install?"; a = "Often we can help after an assessment. Some third-party systems are serviceable; others need partial replacement. We will tell you honestly after we see it." }
      @{ q = "Is training included?"; a = "Yes for new installs. We train the roles that will use live view, credentials, arming, and exports day to day." }
      @{ q = "Can you work nights or weekends?"; a = "When the site requires it - retail after close, schools outside instructional time, industrial around shifts - we plan those windows into the project." }
      @{ q = "Do you offer ongoing service agreements?"; a = "Yes. Ask about maintenance and support options so issues are handled under a known plan instead of emergency scramble." }
    )
    related = @($v, $a, $n, $i)
    ctaTitle = "Want an installer who still picks up the phone?"
    ctaText = "Whether you need a new system or help with an existing one, tell us what is going wrong - or what you want to build - and we will map next steps."
  }
)
