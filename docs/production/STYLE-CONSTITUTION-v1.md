# Style Constitution v1

**Version:** v1
**Last Updated:** 2025-12-26
**Source:** Season 1 Plan Complete v2, Section 8

---

## Purpose

**Prevent drift** across episodes by establishing locked visual standards for Season 1.

This is a **one-page constitution** that defines:
- Typography
- Color + density
- Icon + diagram language
- Map style
- Stat callout pattern

**Goal:** Maintain visual consistency across all 20 Season 1 episodes.

---

## 1. Typography

### Font Family (LOCKED for Season 1)

**Selection:** [To be determined when asset pack is built]

**Requirements:**
- One font family for all Season 1 episodes
- Clear, readable at 1080p resolution
- Calm, professional tone (avoid decorative or overly stylized fonts)

**Usage:**
- **Title:** Large, bold (episode title card)
- **Chapter:** Medium, bold (section headers)
- **Body:** Regular weight (on-screen text, explanations)
- **Source tag:** Small, regular (source attribution)

**Sizes (1080p Baseline):**
- Title: [e.g., 72pt]
- Chapter: [e.g., 48pt]
- Body: [e.g., 32pt]
- Source tag: [e.g., 18pt]

**Note:** Font family and sizes will be frozen once asset pack is built. Any changes require v2 version bump.

---

## 2. Color + Density

### Color Palette (LOCKED)

**Principle:** Calm palette, avoid neon/saturated alerts

**Primary Colors:**
- **Background:** Muted, subdued (e.g., dark gray, soft beige, off-white)
- **Text:** High contrast for readability (e.g., white on dark, dark on light)
- **Accent:** Calm, understated (e.g., soft blue, muted green, subtle orange)

**Avoid:**
- Neon colors (too aggressive)
- Saturated alerts (too jarring)
- High-saturation reds, yellows, or greens (unless data visualization requires it)

**Goal:** Calm, "sleepy" tone consistent with channel positioning.

---

### Density

**Principle:** Clean, uncluttered visuals

**Guidelines:**
- Minimal text on-screen at any given time
- Diagrams use whitespace effectively
- Avoid information overload (one concept per screen)

---

### Source Tag Placement (LOCKED)

**Position:** Same corner and style for all episodes (e.g., bottom-right corner)
**Size:** Small, unobtrusive (e.g., 18pt)
**Color:** High contrast but muted (e.g., white text on semi-transparent dark background)
**Format:** [Source ID] (e.g., "[S1]" or "[UPS 2023]")

**Goal:** Consistent attribution that doesn't distract from content.

---

## 3. Icon + Diagram Language

### Icon Style (LOCKED)

**Principle:** Simple geometric icons, consistent stroke weight

**Guidelines:**
- Use simple shapes (circles, squares, arrows, lines)
- Consistent stroke weight across all icons (e.g., 3px or 4px)
- Avoid overly detailed or illustrative icons
- Monochrome or single-color icons (avoid multi-color unless necessary)

**Examples:**
- Package icon: Simple box outline
- Truck icon: Simple truck silhouette
- Location pin: Circle with pointed bottom

---

### Diagram Style (LOCKED)

**Principle:** Diagrams use the same arrow style, node shapes, and spacing

**Guidelines:**
- **Arrows:** Consistent style (e.g., simple line with triangle head, no fancy curves)
- **Nodes:** Consistent shapes (e.g., circles for entities, rectangles for processes)
- **Spacing:** Consistent padding and alignment (avoid cramped or unbalanced layouts)
- **Labels:** Use body text size, high contrast

**Example Diagram Elements:**
- Process flow: Rectangles → Arrows → Rectangles
- System architecture: Circles (entities) → Lines (connections)
- Data flow: Arrows with labels

**Goal:** Diagrams feel like they're from the same visual family.

---

## 4. Map Style

### Schematic Maps (PREFERRED)

**Principle:** Minimal detail, emphasize flow lines and nodes, keep background subdued

**Guidelines:**
- **Background:** Subdued, minimal cartographic detail (roads, borders only if necessary)
- **Flow lines:** Bold, clear (e.g., thick lines or arrows showing routes)
- **Nodes:** Simple shapes (e.g., circles or pins for facilities, cities)
- **Labels:** Minimal, clear (e.g., city names, facility names)

**Avoid:**
- Detailed cartography (too busy)
- Satellite imagery (too visually complex)
- Bright, colorful map tiles (too distracting)

**Goal:** Maps show flow and relationships, not geography lessons.

---

### Map Examples

- **UPS Routes:** Simple US outline, pins for facilities, arrows for routes
- **Delivery Zones:** Geographic area with shaded zones, minimal roads
- **Global Supply Chain:** World map with flow lines between continents

---

## 5. Stat Callout Pattern

### Pattern (LOCKED)

**Principle:** One dominant number, one supporting label, tiny source tag in consistent placement

**Layout:**
1. **Dominant Number:** Large, bold (e.g., "22 Million")
2. **Supporting Label:** Smaller, below number (e.g., "packages delivered daily")
3. **Source Tag:** Tiny, bottom-right corner (e.g., "[UPS 2023]")

**Example:**
```
┌─────────────────────┐
│                     │
│   22 Million        │  ← Dominant number (large, bold)
│   packages daily    │  ← Supporting label (smaller)
│                     │
│            [UPS 2023]  ← Source tag (tiny, corner)
└─────────────────────┘
```

**Guidelines:**
- Use sparingly (only for key stats)
- High contrast (number stands out from background)
- Source tag is always present (credibility)

---

## Asset Pack Template Checklist

**Before freezing asset pack, ensure the following templates exist:**

- [ ] Title card template (typography, colors, layout)
- [ ] Chapter card template (typography, colors, layout)
- [ ] Diagram template (arrows, nodes, spacing, colors)
- [ ] Map template (schematic style, flow lines, nodes)
- [ ] Stat callout template (number, label, source tag)
- [ ] Source tag style (position, size, color, format)

**Once frozen, all templates must be used consistently across all Season 1 episodes.**

---

## Change Control

**This Style Constitution is LOCKED for Season 1.**

**Any changes require:**
1. Version bump (v2)
2. Documented rationale
3. Chris approval

**Purpose:** Prevent visual drift and ensure brand consistency across 20 episodes.

---

## Notes

- Asset pack templates will be built and frozen during Phase 0 (Setup Gate)
- Style Constitution enforced via QA checklist (visual compliance check before publish)
- All visuals (diagrams, maps, stat callouts) must follow this constitution
