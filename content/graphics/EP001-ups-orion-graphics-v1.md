# EP001: UPS ORION Graphics & Animations Brief (v1)

**Episode:** EP001 - How UPS Turned Routing Into a Machine
**Created:** 2025-12-25
**Version:** v1
**Total Graphics:** 10

---

## Design Philosophy & Style Guide

### Overall Visual Style:
- **Tone:** Clean, modern, technical but accessible
- **Color Palette:**
  - Primary: UPS Brown (#351C15), UPS Gold (#FFB500)
  - Supporting: White, Off-white (#F5F5F5), Dark Gray (#2C2C2C), Muted Blue (#4A90E2) for data/tech elements
  - Accent: Green (#34A853) for "good/optimal", Red (#EA4335) for "bad/inefficient"
- **Typography:** Sans-serif (Helvetica, Roboto, or similar); clean and legible
- **Animation Style:** Smooth, purposeful; 60fps; no flashy transitions — think "late-night documentary," not "viral TikTok"

### Key Principles:
1. Clarity over complexity — viewers should "get it" in 3 seconds
2. Data should be visually obvious (use size, color, position to communicate hierarchy)
3. Avoid clutter — negative space is good
4. Animations should reveal information progressively, not all at once

---

## GRAPHIC 1: Factorial Explosion Animation

**Section:** Section 1 (Scale of the Problem)
**Timestamp:** ~1:10-1:25
**Duration:** 10-15 seconds

### Objective:
Visualize the combinatorial explosion of the traveling salesman problem — show how the number of possible routes grows incomprehensibly large as stops increase.

### Inputs Required:
- Starting number: 1
- Factorial progression: 1 × 2 × 3 × 4 × 5... up to 120
- Final result: ~6.7 × 10^198

### Visual Concept:
**Option A (Preferred):**
- Split screen: Left side shows equation growing (1 × 2 × 3...), right side shows the result
- Numbers start small and readable
- As factorial grows, digits spill off screen, multiply rapidly
- By 120, the screen is filled with digits cascading like Matrix-style code
- Final frame: "6.7 × 10^198" centered, then zoom out to show "More routes than atoms in the universe"

**Option B:**
- Tree diagram starting with 1 stop, branching to 2, 3, 4... each branch multiplying
- Branches grow exponentially until screen is filled
- Final zoom out shows the tree has filled the entire frame impossibly dense

### Style Notes:
- Use monospace font for numbers (evokes code/computation)
- White/light gray numbers on dark background OR dark numbers on white (test both)
- Speed: Start slow (1×2×3...), accelerate rapidly, then slow down for final reveal
- Sound design suggestion: Clicking/calculation sounds building to a crescendo

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel (if overlaying on other footage)

---

## GRAPHIC 2: On-Screen Statistics (Reusable Template)

**Section:** Throughout (multiple uses)
**Timestamp:** Various
**Duration:** 3-8 seconds each

### Objective:
Display key statistics on screen in a clean, readable format that complements narration without distracting.

### Inputs Required:
Multiple stat cards throughout the video:
1. "135,000 vehicles" + "22M packages/day"
2. "120 stops = 6.7 × 10^198 possible routes" + "Universe: ~10^80 atoms"
3. "5.7 billion packages/year" + "3.5 billion miles/year"
4. "5 → 30 → 50 → 700+ people"
5. "$250M investment" + "2003-2013"
6. "Data inputs: GPS, Traffic, Weather, Package Sizes, Delivery Windows"
7. "200,000+ routes analyzed per driver"
8. "2020: Dynamic Routing Update"
9. "Dynamic routing: +2-4 miles saved/day/driver"
10. "~90% right turns"
11. "Left turns: 3x more fatal crashes"
12. "Usual: 150 mi / ORION: 140 mi / Driver: 135 mi"
13. "100M miles saved/year" + "10M gallons fuel saved/year" + "100K metric tons CO₂ avoided/year"
14. "$300M+ annual savings" + "$250M investment"

### Visual Concept:
- Lower-third placement (bottom 1/3 of screen) OR side panel (left or right 1/4)
- Card slides in smoothly from side or bottom
- Text appears with subtle fade-in or type-on effect
- Numbers should be LARGE and prominent; labels smaller
- Use UPS gold for numbers, white/gray for labels
- Background: semi-transparent dark overlay OR solid color bar

### Style Notes:
- Consistent placement throughout video (don't switch between lower-third and side panel)
- Dwell time: 5-8 seconds (enough to read twice)
- Exit animation: Fade out OR slide out (match entry animation direction)

### Deliverable Format:
- Template file (After Effects, Premiere, or similar) that can be easily updated with new text
- Individual renders for each stat card: 1920×1080, 60fps, PNG sequence or MOV with alpha channel

---

## GRAPHIC 3: ORION Acronym Expansion

**Section:** Section 2 (Building ORION)
**Timestamp:** ~4:00-4:15
**Duration:** 5-8 seconds

### Objective:
Clearly show what ORION stands for so viewers understand it's an acronym.

### Inputs Required:
- "ORION"
- "On-Road Integrated Optimization and Navigation"

### Visual Concept:
**Option A (Preferred):**
- Start with "ORION" centered in large letters
- Each letter scales up and moves to left, revealing the full word it represents:
  - O → On-Road
  - R → (Integrated)
  - I → (Optimization)
  - O → (and)
  - N → Navigation
- Final frame: Full acronym spelled out vertically or horizontally

**Option B:**
- "ORION" centered
- Fade in full phrase below in smaller text
- Highlight each letter in ORION as the corresponding word appears

### Style Notes:
- UPS brown for "ORION", UPS gold for the full phrase
- Clean sans-serif font
- White or off-white background
- Animation should feel mechanical/technical (not playful)

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## GRAPHIC 4: Team Growth Visualization

**Section:** Section 2 (Building ORION)
**Timestamp:** ~6:30-6:50
**Duration:** 8-10 seconds

### Objective:
Show the growth of the ORION team from 5 people to 700+ over the development period.

### Inputs Required:
- 5 people (initial team)
- 30 people (testing phase)
- 50 people (development phase)
- 700+ people (deployment phase)

### Visual Concept:
**Option A (Icon-Based):**
- Start with 5 person icons
- Icons multiply/replicate to 30, then 50, then fill the screen (700+)
- Use different colors or positions to show different phases
- Labels appear: "Initial: 5" → "Testing: 30" → "Development: 50" → "Deployment: 700+"

**Option B (Bar Chart Growth):**
- Animated bar chart showing team size growing over time
- X-axis: Phases (Initial, Testing, Development, Deployment)
- Y-axis: Team size (0-700+)
- Bars grow from left to right with numbers appearing

### Style Notes:
- Person icons: Simple, minimal (avoid detail)
- Use UPS gold for person icons on dark background
- Progressive reveal: Show each phase sequentially, don't show all at once

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## GRAPHIC 5: Data Flow into ORION System

**Section:** Section 3 (How ORION Works)
**Timestamp:** ~8:00-8:20
**Duration:** 15-20 seconds

### Objective:
Visualize the "billions of data points" flowing into ORION from multiple sources — GPS, traffic, weather, packages, etc.

### Inputs Required:
- Data sources: GPS, Traffic, Weather, Package Volume, Time Windows, Historical Data, Driver Input (DIAD)
- Central system: ORION
- Output: Optimized route

### Visual Concept:
**Preferred Design:**
- Center: "ORION" logo/box
- Surrounding: 6-8 data source icons (GPS satellite, traffic light, cloud/weather, package box, clock, database, handheld device)
- Animated streams/lines flow from each icon toward ORION center
- Streams pulse/flow continuously
- Data points (small dots or packets) travel along the streams
- Final frame: ORION glows/activates, outputs a route line flowing out to the right

### Style Notes:
- Use muted blues and grays for data streams (tech feel)
- Icons should be simple, recognizable at small size
- ORION center should be UPS brown/gold
- Avoid overwhelming the viewer — limit to 6-8 inputs max
- Smooth, continuous animation (loopable if needed)

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## GRAPHIC 6: Dynamic Route Update Animation

**Section:** Section 3 (How ORION Works)
**Timestamp:** ~10:30-10:50
**Duration:** 15-20 seconds

### Objective:
Show how dynamic routing works — a route is planned, then a new pickup request appears, and the route automatically recalculates.

### Inputs Required:
- Map background (simple, abstracted city grid or neighborhood)
- Original route: Sequence of stops A → B → C → D → E (blue line)
- New pickup request: Stop X (appears between B and C)
- Updated route: A → B → X → C → D → E (green line, redrawn)

### Visual Concept:
**Step-by-step animation:**
1. Map with 5 stops (A-E) shown as markers
2. Blue line draws connecting the stops in sequence
3. Label: "Original Route"
4. Pause for 2 seconds
5. New stop "X" appears (blinking/pulsing icon) with label "New Pickup Request"
6. Blue route fades to 50% opacity
7. Green route draws, incorporating the new stop
8. Label: "Optimized Route (Updated)"
9. Final frame: Green route fully drawn, blue route fades out

### Style Notes:
- Map should be simplified/abstracted (not real Google Maps) to avoid licensing issues
- Use clear color coding: Blue = old, Green = new, Red/Orange = new pickup
- Stops should be labeled clearly (A, B, C, D, E, X)
- Route lines should have direction indicators (arrows)
- Smooth redrawing animation (not instant)

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## GRAPHIC 7: Intersection Overhead — Left vs. Right Turn

**Section:** Section 4 (Right Turn Rule)
**Timestamp:** ~11:30-11:50
**Duration:** 15-20 seconds

### Objective:
Show from a top-down view why left turns are inefficient — they require crossing traffic, causing delays.

### Inputs Required:
- 4-way intersection (top-down view)
- UPS truck approaching from bottom
- Oncoming traffic from top
- Left turn path (red)
- Right turn path (green)

### Visual Concept:
**Split-screen comparison:**

**Left Side — Left Turn:**
1. Truck approaches intersection from bottom
2. Truck waits as oncoming traffic passes (3-4 cars stream by)
3. Truck turns left across traffic lanes (red path drawn)
4. Timer shows: "Wait time: 45 seconds"

**Right Side — Right Turn:**
1. Truck approaches same intersection
2. Truck immediately turns right (no wait)
3. Green path drawn
4. Timer shows: "Wait time: 0 seconds"

**Final comparison frame:**
- Side-by-side paths shown
- Left turn: Red path, "45s idle time", fuel drop icon
- Right turn: Green path, "0s idle time", checkmark

### Style Notes:
- Use simple geometric shapes for vehicles (rectangles/rounded rectangles)
- UPS truck should be brown, other cars gray
- Paths drawn as thick colored lines
- Intersection should be minimal (just white lines on dark pavement)
- Timer/clock element should be prominent

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## GRAPHIC 8: Route Comparison — Left Turn vs. Right-Turn Loops

**Section:** Section 4 (Right Turn Rule)
**Timestamp:** ~13:10-13:30
**Duration:** 15-20 seconds

### Objective:
Show the counterintuitive math: a route with right-turn loops may be longer in distance but faster in time.

### Inputs Required:
- Map background (neighborhood grid)
- Start point, End point (same for both routes)
- Route A: Direct path with 1 left turn (red)
- Route B: Looping path with only right turns (green)

### Visual Concept:
**Split-screen comparison:**

**Left Side — Route A (Left Turn):**
1. Red line draws from Start to End, crossing through intersection with left turn
2. Stats appear:
   - Distance: 2.5 miles
   - Time: 8 minutes (includes 45s left turn wait)

**Right Side — Route B (Right Turns):**
1. Green line draws from Start to End, making a loop to avoid left turn
2. Stats appear:
   - Distance: 3.0 miles
   - Time: 7 minutes (no waiting)

**Final comparison frame:**
- Both routes shown side-by-side
- Highlight: "0.5 miles longer, but 1 minute faster"
- Checkmark next to Route B

### Style Notes:
- Use simplified map (not real streets)
- Clear start and end markers
- Route lines should be thick and easy to follow
- Stats displayed prominently
- Use icons: Distance (ruler icon), Time (clock icon)

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## GRAPHIC 9: "Beat the Computer" Challenge Poster

**Section:** Section 5 (Human Side)
**Timestamp:** ~15:15-15:30
**Duration:** 10-12 seconds

### Objective:
Recreate the "Beat the Computer" motivational poster/sheet that UPS used to encourage driver adoption.

### Inputs Required:
- Title: "BEAT THE COMPUTER"
- Subtext: "ORION predicts your route. Can you do better?"
- Example driver results (leaderboard style):
  - Driver Name | ORION Prediction | Actual Miles
  - Johnson | 145 mi | 138 mi ✓
  - Martinez | 152 mi | 149 mi ✓
  - Chen | 140 mi | 135 mi ✓

### Visual Concept:
**Workplace poster style:**
- Portrait orientation (or centered in landscape frame with blurred background)
- Bold headline: "BEAT THE COMPUTER"
- Leaderboard/table showing drivers who beat their ORION predictions
- UPS branding (logo in corner)
- Motivational tone but professional (not cheesy)

**Alternative: Animated leaderboard:**
- Start with blank leaderboard
- Driver names and results populate one by one
- Checkmarks appear next to drivers who beat ORION
- Highlight the competitive/gamification aspect

### Style Notes:
- Should look like an actual workplace poster (slightly worn/printed feel optional)
- UPS brown header, gold accents
- Table/leaderboard should be clean and legible
- Use real-sounding driver names (anonymized)

### Deliverable Format:
- 1920×1080, 60fps, static image (PNG) OR animated version (MP4/MOV)

---

## GRAPHIC 10: Results Impact Visualization

**Section:** Section 6 (Results)
**Timestamp:** ~17:10-17:40
**Duration:** 20-30 seconds

### Objective:
Visualize the massive impact of ORION — 100M miles, 10M gallons fuel, 100K metric tons CO₂, $300M+ savings.

### Inputs Required:
- 100 million miles saved per year
- 10 million gallons of fuel saved per year
- 100,000 metric tons CO₂ avoided per year
- $300 million annual savings
- Environmental equivalent: 21,000 cars off the road

### Visual Concept:
**Animated counter/odometer style:**

**Phase 1: Miles**
- Odometer-style counter rolling up from 0 to 100,000,000
- Icon: Road/highway
- Label: "Miles Saved Per Year"

**Phase 2: Fuel**
- Counter: 0 to 10,000,000
- Icon: Fuel pump / gas can
- Label: "Gallons of Fuel Saved"

**Phase 3: CO₂**
- Counter: 0 to 100,000
- Icon: Leaf or cloud with strike-through
- Label: "Metric Tons CO₂ Avoided"
- Sub-label: "= 21,000 cars off the road"

**Phase 4: Cost**
- Counter: $0 to $300,000,000
- Icon: Dollar sign
- Label: "Annual Savings"

**Final frame:**
- All four stats displayed together in a grid or list
- Emphasize the ROI: "$250M investment → $300M+ annual return"

### Style Notes:
- Counters should roll/tick upward (satisfying to watch)
- Use large, bold numbers
- Icons should be simple and immediately recognizable
- Progressive reveal: Show one stat at a time, then all together
- Green color for environmental stats, gold for financial stats

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## Bonus Graphic (Optional): ORION Timeline

**Section:** Section 2 or Recap
**Timestamp:** Variable
**Duration:** 10-15 seconds

### Objective:
Show the 10-year development timeline from 2003 to 2013 launch to 2020 dynamic routing upgrade.

### Inputs Required:
- 2003: Development begins
- 2008-2011: Prototype testing
- 2013: Official launch
- 2016: Full U.S. deployment
- 2020: Dynamic routing upgrade

### Visual Concept:
- Horizontal timeline with key milestones marked
- Icons or labels for each phase
- Animated reveal: Timeline draws from left to right, milestones appear sequentially

### Style Notes:
- Clean, minimal design
- UPS brown timeline bar with gold milestone markers
- Brief labels (2-4 words per milestone)

### Deliverable Format:
- 1920×1080, 60fps, MP4 or MOV with alpha channel

---

## Production Notes

### Prioritization:

**Must-Have (Critical to Story):**
1. Factorial Explosion (Graphic 1)
2. Data Flow into ORION (Graphic 5)
3. Dynamic Route Update (Graphic 6)
4. Intersection Overhead Left vs. Right (Graphic 7)
5. Route Comparison (Graphic 8)
6. "Beat the Computer" Poster (Graphic 9)
7. Results Impact Visualization (Graphic 10)

**Nice-to-Have:**
- On-Screen Stats (Graphic 2) — can use simple lower-thirds instead
- ORION Acronym (Graphic 3) — can use text card instead
- Team Growth (Graphic 4) — illustrative but not critical
- Timeline (Bonus Graphic) — helpful but can be conveyed through narration

### Animation Software Recommendations:
- Adobe After Effects (industry standard, most flexible)
- Apple Motion (Mac-friendly, good for simpler animations)
- Blender (free, powerful, steeper learning curve)
- Keynote/PowerPoint (for very simple animations, export as video)

### Estimated Production Time:
- Simple graphics (Stats, Acronym): 1-2 hours each
- Medium complexity (Team Growth, Timeline): 3-5 hours each
- Complex animations (Factorial, Data Flow, Routes, Results): 6-10 hours each

**Total estimated time:** 40-60 hours for all 10 graphics (if done in-house)
**Outsourced cost estimate:** $2,000-5,000 depending on animator rates and complexity

---

## Accessibility Notes

For all graphics:
- Ensure sufficient color contrast (especially text on backgrounds)
- Don't rely solely on color to convey meaning (use labels, icons, patterns)
- Text should be large enough to read on mobile devices
- Animations should not flash rapidly (avoid triggering photosensitivity)
- Provide alt-text descriptions if graphics are used in static form

---

**Next Steps:**
1. Review and approve graphic concepts
2. Assign to animator/designer OR plan DIY production
3. Create storyboard sketches for complex animations
4. Establish asset pipeline (where files will be stored, naming conventions)
5. Set deadlines for each graphic based on video production timeline

---

**Reviewed by:** [Pending]
**Approved by:** [Pending]
