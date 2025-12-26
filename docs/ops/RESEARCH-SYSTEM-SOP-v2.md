# Research System SOP v2

**Version:** v2
**Last Updated:** 2025-12-26
**Source:** Season 1 Plan Complete v2, Section 5

---

## Overview

This SOP defines the research and sourcing standards for all Season 1 episodes.

**Key Changes in v2:**
- Claims system split into **Critical vs Narrative** to prevent research grind while maintaining credibility

---

## Source Tier Rubric

### Tier 1: Primary Sources (Preferred for Critical Claims)

**Definition:** Direct, authoritative sources with no intermediary interpretation

**Examples:**
- Government reports and filings (SEC filings, congressional testimony, regulatory reports)
- Company technical documentation and whitepapers
- Academic peer-reviewed papers
- Court documents and legal filings
- Official company financial reports (10-K, 10-Q, annual reports)
- Patent filings

**Use For:**
- Critical claims (numbers, dates, causality, safety/regulatory implications)
- Thesis-central claims
- Any claim that will be shown on-screen as a key-stat

---

### Tier 2: High-Quality Secondary Sources (Acceptable for Critical Claims with Caution)

**Definition:** Reputable sources with editorial standards and fact-checking, but not primary documents

**Examples:**
- Reputable journalism (WSJ, NYT, Reuters, Bloomberg, industry-specific outlets with editorial standards)
- Credible books from established authors/publishers
- Reputable industry reports (from recognized research firms)
- Well-sourced investigative reporting

**Use For:**
- Critical claims (if supported by at least one Tier 1 source OR two independent Tier 2 sources)
- Narrative claims (mechanism explanations, framing)
- Context and background

**Caution:**
- Verify key facts against Tier 1 sources when possible
- Be wary of opinion masquerading as fact
- Check for conflicts of interest or bias

---

### Tier 3: Tertiary Sources (NOT Allowed for Critical Claims)

**Definition:** Sources with low editorial standards, unverified claims, or potential bias

**Examples:**
- Wikipedia (useful for leads, but not citable)
- Blogs and personal websites (unless author is recognized expert)
- Social media posts (unless from official company/organization accounts)
- Aggregator sites with no original reporting
- Press releases (useful for company statements, but verify independently)

**Use For:**
- Research leads (find better sources)
- General context (not cited in episode)

**NOT Allowed For:**
- Critical claims
- Any claim that will be cited in the episode

---

## Claims System Split: Critical vs Narrative (v2)

### Critical Claims (Strict Sourcing Required)

**Definition:** Claims that are high-risk for credibility if wrong

**Includes:**
- Specific numbers (e.g., "UPS delivers 22 million packages daily")
- Precise dates (e.g., "The first barcode scan was June 26, 1974")
- Causality (e.g., "The MCAS system caused the Boeing 737 MAX crashes")
- Safety or regulatory implications (e.g., "The FDA halted Theranos testing")
- Thesis-central claims (claims the episode's argument depends on)

**Sourcing Requirements:**
- **Two sources** (ideally Tier 1 or Tier 2) OR
- **One authoritative primary source** that directly states the claim (Tier 1)

**On-Screen Treatment:**
- Must have on-screen source tags if shown as a key-stat

**Example:**
> Claim: "UPS delivers 22 million packages daily"
> Sources: [S1: UPS Annual Report 2023], [S2: WSJ article citing UPS data]
> Critical: YES
> On-Screen Tag: YES (if shown as key-stat)

---

### Narrative Claims (Lighter Sourcing Required)

**Definition:** Mechanism explanations and framing that are not specific numbers, dates, or causality

**Includes:**
- General mechanisms (e.g., "Routing optimization reduces fuel costs")
- Framing and context (e.g., "Last-mile delivery is expensive")
- Broad consensus statements (e.g., "Toyota's production system was hard to replicate")

**Sourcing Requirements:**
- At least **one Tier 1 or Tier 2 source**, OR
- Broad consensus (multiple sources agree, or it's common knowledge in the field)

**Tracking:**
- Still recorded in `claims.md`, but marked `Critical=NO`

**Example:**
> Claim: "Routing optimization can reduce fuel costs"
> Sources: [S3: Industry report on logistics efficiency]
> Critical: NO
> On-Screen Tag: NO

---

## Purpose of the Split

**Why split Critical vs Narrative?**
- Prevents research grind (not every statement needs two sources)
- Maintains credibility for what matters (numbers, dates, causality)
- Allows faster scripting without sacrificing quality

---

## Claims Tracking Template

**Location:** Each episode's `claims.md` file

**Table Format:**

| Claim | Critical? | Source 1 | Source 2 | Tier | On-Screen Tag? | Notes |
|-------|-----------|----------|----------|------|----------------|-------|
| [Claim text] | YES/NO | [Source] | [Source or N/A] | 1/2/3 | YES/NO | [Context] |

---

## QA Checklist Integration

**Pre-Publish QA:**
- [ ] All Critical claims have 2 sources OR 1 authoritative primary
- [ ] All Critical claims shown on-screen have source tags
- [ ] All Narrative claims have at least 1 Tier 1/2 source
- [ ] All claims linked to `sources.md` entries
- [ ] No Tier 3 sources used for Critical claims

---

## Examples

### Example 1: Critical Claim (Number)

**Claim:** "UPS delivers 22 million packages per day on average"
**Critical?** YES (specific number, thesis-central)
**Source 1:** UPS 2023 Annual Report (Tier 1: Primary)
**Source 2:** Wall Street Journal article (Tier 2: High-quality secondary)
**On-Screen Tag?** YES (if shown as key-stat)

### Example 2: Narrative Claim (Mechanism)

**Claim:** "Route optimization algorithms can reduce fuel consumption"
**Critical?** NO (general mechanism, not specific number)
**Source 1:** MIT study on logistics optimization (Tier 1: Peer-reviewed)
**Source 2:** N/A (only one source required for Narrative)
**On-Screen Tag?** NO

### Example 3: Critical Claim (Causality)

**Claim:** "The MCAS system was a contributing factor in the Boeing 737 MAX crashes"
**Critical?** YES (causality, safety implications)
**Source 1:** FAA Investigation Report (Tier 1: Government report)
**Source 2:** NTSB findings (Tier 1: Government report)
**On-Screen Tag?** YES (if discussed as key point)
**Language Note:** Use "was a contributing factor" (as stated in reports) not "caused" (stronger claim)

---

## Notes

- This SOP is locked as part of Season 1 Plan v2
- Any changes require version bump and rationale
- Purpose: Maintain credibility-first standard while preventing research paralysis
