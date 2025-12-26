# Rights-Safe Visual Sourcing SOP

**Version:** v1
**Last Updated:** 2025-12-26
**Source:** Season 1 Plan Complete v2, Section 6

---

## Overview

This SOP defines the visual sourcing standards to prevent licensing issues and ensure proper attribution.

**Purpose:** Avoid copyright violations, ensure commercial YouTube use is allowed, and maintain clear attribution.

---

## Default Visual Stack (In Order of Preference)

### 1. House-Made Visuals (PREFERRED)

**Definition:** Visuals created internally (diagrams, maps, icons, overlays)

**Examples:**
- Diagrams (process flows, system architectures)
- Schematic maps (routes, facility locations)
- Icons and graphics
- Data visualizations and charts
- Text overlays and source tags

**Advantages:**
- No licensing issues
- Full control over style and accuracy
- Consistent with Style Constitution

**Use For:**
- Primary visuals in all episodes
- Diagrams and maps (preferred over stock)
- Icons and overlays

---

### 2. Public Domain / Government Visuals

**Definition:** Visuals in the public domain or from government sources (allowed with attribution)

**Examples:**
- Government maps (USGS, NASA)
- Historical photos (pre-1928 or explicitly public domain)
- Government agency photos/videos (e.g., FAA, NTSB)
- Public domain archives (Library of Congress, Wikimedia Commons public domain)

**Requirements:**
- Verify public domain status (check license explicitly)
- Provide attribution (even if not required)
- Store evidence of public domain status in receipts folder

**Use For:**
- Historical context
- Maps and geographic data
- Government/regulatory content

---

### 3. Licensed Stock (Only If License is Clear and Stored)

**Definition:** Stock footage, photos, music, or graphics with commercial licenses

**Requirements:**
- License MUST explicitly allow commercial YouTube use
- Store license receipt and terms in media warehouse: `...\library\receipts-licenses\[ep-id]\`
- Track in episode's `visual-credits.md` file
- Verify no attribution requirements (or provide attribution if required)

**Examples:**
- Stock footage (Pond5, Storyblocks, Artgrid)
- Stock photos (Unsplash Pro, Pexels, Pixabay with commercial licenses)
- Stock music (Epidemic Sound, Artlist)

**Caution:**
- Always verify license terms before use
- Some "free" stock has attribution or non-commercial restrictions
- Store evidence in case of future disputes

**Use For:**
- B-roll footage (when house-made not feasible)
- Generic visuals (factories, warehouses, delivery trucks)
- Background music (if not using royalty-free)

---

### 4. Company Logos / Screenshots (Limited, Factual Use)

**Definition:** Logos, product screenshots, or interface captures used for factual identification

**Requirements:**
- Use only when necessary to identify entities or show documented interfaces
- Limited use (brief, contextual)
- No endorsement implied
- Attribution on-screen (e.g., "Logo: [Company Name]")
- Avoid prolonged logo display

**Fair Use Justification:**
- Factual identification (not decorative)
- Transformative use (commentary, education)
- Limited and necessary

**Examples:**
- UPS logo to identify UPS (brief, factual)
- Screenshot of ORION interface (if documented in sources)
- Company building exterior (if relevant to story)

**Caution:**
- Do NOT imply endorsement
- Do NOT use logos as decorative elements
- Keep display time minimal

---

## Maps Policy (LOCKED)

### Schematic Maps (PREFERRED)

**Definition:** Hand-drawn or simplified maps highlighting routes, facilities, or flows

**Examples:**
- Pin-and-path maps (e.g., UPS routes)
- Facility location maps (warehouse distribution)
- Flow diagrams overlaid on simple geography

**Advantages:**
- No licensing issues (you drew it)
- Consistent with Style Constitution
- Emphasize flow and relationships, not cartographic detail

**Style:**
- Subdued background (minimal detail)
- Emphasize flow lines and nodes
- Use simple shapes and colors

---

### Map Imagery / Tiles (If Used)

**Requirements:**
- Use a provider whose license allows commercial YouTube use (e.g., OpenStreetMap with attribution, Mapbox commercial license)
- Follow attribution rules exactly
- Store license evidence in receipts folder
- Keep map overlays minimal (highlight flows, not detailed cartography)

**Avoid:**
- Google Maps imagery (license restricts most commercial use)
- Copying map tiles without attribution

---

## Logos / Screenshots Policy (LOCKED)

### When to Use

- Only when necessary to identify entities or show documented interfaces
- Brief, factual use (not decorative)

### When NOT to Use

- Do NOT use logos as decorative elements or backgrounds
- Do NOT imply endorsement
- Do NOT display logos for extended periods

### Attribution

- On-screen attribution (e.g., "Logo: [Company Name]")
- In episode `sources.md` under "Visual credits" section

---

## Receipts and Licensing Storage (LOCKED)

### Storage Location

**Media Warehouse:** `...\library\receipts-licenses\`

**Structure:**
```
...\library\receipts-licenses\
  ep001\
    stock-footage-warehouse.pdf (license receipt)
    license-terms-pond5.pdf (license terms)
  ep002\
    ...
```

**Repo Reference:**
- Each episode's `sources.md` includes a "Visual credits" section
- `visual-credits.md` file lists all visuals and links to receipts location

---

### What to Store

- License purchase receipts (PDF or screenshot)
- License terms (full text or URL + date accessed)
- Attribution requirements (if any)
- Provider name and license type

---

## Visual Credits Template

**Location:** Each episode's `visual-credits.md` file

**Table Format:**

| Visual Description | Type | Source | License Status | Receipt Location | Attribution Required? | Notes |
|--------------------|------|--------|----------------|------------------|----------------------|-------|
| [e.g., "Warehouse B-roll"] | Stock footage | Pond5 | Licensed | `...\library\receipts-licenses\ep001\pond5.pdf` | NO | Commercial YouTube use allowed |

---

## QA Checklist Integration

**Pre-Publish QA:**
- [ ] All visuals accounted for in `visual-credits.md`
- [ ] All licensed stock has receipts stored in media warehouse
- [ ] All logos/screenshots used for factual identification only (no endorsement)
- [ ] All maps follow schematic-first policy (or proper attribution if tiles used)
- [ ] Attribution provided where required
- [ ] `sources.md` includes "Visual credits" section

---

## Examples

### Example 1: House-Made Diagram (PREFERRED)

**Visual:** Diagram showing UPS package routing flow
**Type:** House-made
**License:** N/A (created internally)
**Attribution:** NO
**Receipt:** N/A

### Example 2: Public Domain Historical Photo

**Visual:** Historical photo of first barcode scan (Wrigley's gum, 1974)
**Type:** Public domain
**License:** Public domain (pre-1978 photograph)
**Attribution:** YES ("Photo: Smithsonian Institution")
**Receipt:** `...\library\receipts-licenses\ep006\smithsonian-public-domain.pdf`

### Example 3: Licensed Stock Footage

**Visual:** B-roll of warehouse operations
**Type:** Licensed stock
**License:** Pond5 commercial license
**Attribution:** NO (license does not require)
**Receipt:** `...\library\receipts-licenses\ep001\pond5-warehouse.pdf`

### Example 4: Company Logo (Factual Use)

**Visual:** UPS logo (brief, 2 seconds)
**Type:** Company logo
**License:** Fair use (factual identification)
**Attribution:** YES (on-screen: "Logo: UPS")
**Receipt:** N/A (fair use)
**Notes:** Used only to identify UPS, no endorsement implied

---

## Notes

- This SOP is locked as part of Season 1 Plan v2
- Purpose: Prevent licensing issues while maintaining visual quality
- Default to house-made visuals whenever feasible
