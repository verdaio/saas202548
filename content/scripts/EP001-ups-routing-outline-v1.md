# EP001: How UPS Turned Routing Into a Machine

## Metadata

| Field | Value |
|-------|-------|
| Episode ID | EP001 |
| Working Title | How UPS Turned Routing Into a Machine |
| Target Length | 15-20 minutes |
| Author | [TBD] |
| Created | 2025-12-24 |
| Status | Outline |
| Content Pillar | Systems Explained |

---

## Hook (0:00 - 0:45)

*Goal: Capture attention with the scale of the problem*

**Opening Line** (first 5 seconds):
> Every day, UPS delivers about 25 million packages. And behind each one is a quiet decision — which truck, which route, which turn.

**The Problem/Question**:
> How do you route 125,000 vehicles to millions of addresses every single day... without everything falling apart?

**The Promise**:
> Today, we're going to look at the invisible machine that makes this work — a system called ORION, and the surprising rule that says: don't turn left.

**Transition to Content**:
> It starts with a problem so big, it took ten years to solve.

---

## Section 1: The Scale of the Problem

*Estimated time: 0:45 - 4:00*

### Key Points
1. The daily scale: 25M packages, 125K vehicles, 5.5B miles/year
2. Why routing is harder than it looks (the traveling salesman problem)
3. A driver with 120 stops has more possible routes than atoms in the universe
4. The old way: experienced drivers, local knowledge, intuition

### Script/Talking Points

> Imagine you're a UPS driver. You have 120 stops today. How many different ways could you sequence those stops?
>
> The answer is... a number with 200 digits. More possible routes than there are atoms in the observable universe.
>
> For decades, UPS relied on something simpler: experience. Veteran drivers knew their routes. They knew which streets got congested at 3pm. Which buildings had difficult parking. Where the dogs were.
>
> But experience doesn't scale. And UPS needed to scale.

### Visual Notes
- [ ] Animation: package count ticker (25M daily)
- [ ] Map graphic: showing delivery density in urban area
- [ ] Text overlay: "120 stops = more routes than atoms in universe"
- [ ] B-roll: Vintage UPS delivery footage (if available)

### Research Sources
- UPS delivers ~25 million packages daily
- Fleet of 125,000+ vehicles
- Traveling salesman problem complexity

---

## Section 2: Building ORION (The 10-Year Journey)

*Estimated time: 4:00 - 8:00*

### Key Points
1. Development started in 2003, launched 2013, full rollout 2016
2. The team: PhD in operations research, industrial engineers, software engineers, business managers
3. Early failures — algorithms that drivers couldn't follow
4. The rebuild: observing what drivers actually did, not what rules said

### Script/Talking Points

> In 2003, UPS started building something new. They called it ORION — On-Road Integrated Optimization and Navigation.
>
> The initial team was small but eclectic: a PhD in operations research, an industrial engineer, a UPS business manager, and several software engineers.
>
> They had one goal: create an algorithm that could calculate the optimal route for every driver, every day.
>
> The first prototypes failed. The routes they generated were technically optimal... but impossible to drive. They followed outdated rules. They ignored local realities. Drivers ignored them.
>
> So the team went back to the beginning. Instead of starting with rules, they started with observation. What did experienced drivers actually do? What worked, and why?
>
> It took ten years. Over $250 million in investment. But when ORION finally launched...

### Visual Notes
- [ ] Timeline graphic: 2003 → 2013 → 2016
- [ ] Simple diagram: team composition
- [ ] Before/after route comparison (rule-based vs. drivable)
- [ ] Investment counter: $250M

### Research Sources
- [BSR Case Study on ORION adoption](https://www.bsr.org/en/case-studies/center-for-technology-and-sustainability-orion-technology-ups)
- [Fast Company: Drivers vs Algorithm](https://www.fastcompany.com/3004319/brown-down-ups-drivers-vs-ups-algorithm)

---

## Section 3: How ORION Actually Works

*Estimated time: 8:00 - 11:30*

### Key Points
1. Processing billions of data points daily
2. The DIAD device: real-time data collection from every driver
3. 200,000+ routing options analyzed per driver, per day
4. Dynamic routing: routes update throughout the day (2024 upgrade)

### Script/Talking Points

> ORION processes billions of data points every day.
>
> GPS data from every vehicle. Historical delivery records. Real-time traffic. Weather conditions. Package volumes. Time windows.
>
> Each driver carries a device called a DIAD — Delivery Information Acquisition Device. It collects real-time inputs: package sizes, delivery windows, traffic updates. All of this feeds into the algorithm.
>
> For each driver, ORION analyzes over 200,000 possible routing options. Every morning, the system generates a sequence — not just where to go, but in what order, and by what path.
>
> The 2024 upgrade added something new: dynamic routing. Before, routes were set at the start of the day. Now, they update continuously. A new pickup request comes in? The route adjusts automatically.
>
> It can perform 30,000 route calculations per minute.

### Visual Notes
- [ ] Diagram: data inputs flowing into ORION
- [ ] DIAD device photo/illustration
- [ ] Animation: route being calculated and optimized
- [ ] Before/after: static vs. dynamic routing

### Research Sources
- [Supply Chain Dive: Dynamic ORION](https://www.supplychaindive.com/news/ups-orion-route-planning-analytics-data-logistics/601673/)
- [Ascend Analytics overview](https://www.ascendanalytics.co/post/how-upss-orion-system-slashed-delivery-costs-with-route-optimization)

---

## Section 4: The Right Turn Rule

*Estimated time: 11:30 - 14:30*

### Key Points
1. 2004: UPS announces the no-left-turn policy
2. The logic: left turns waste time (waiting for traffic), waste fuel (idling), and cause accidents
3. 90% of UPS turns are now right turns
4. The counterintuitive math: longer routes, but faster overall at scale

### Script/Talking Points

> In 2004, UPS announced something that sounded almost absurd: their drivers would stop turning left.
>
> Well, almost. Ninety percent of turns made by UPS drivers are now right turns. Left turns only happen when absolutely necessary.
>
> Why? Left turns mean crossing traffic. They mean waiting at lights. They mean idling. And in America, where you're crossing oncoming lanes, they're three times more likely to cause a fatal pedestrian crash than right turns.
>
> So ORION is built to avoid left turns. A series of right-hand loops. It might look longer on a map. Sometimes it is longer. But when you're running 125,000 trucks, the savings add up.
>
> Mythbusters actually tested this. They found that avoiding left turns saved fuel, even when the total distance was greater.
>
> It's one of those things that only makes sense at scale.

### Visual Notes
- [ ] Map animation: left turn route vs. right turn loop route
- [ ] Infographic: 90% right turns
- [ ] Diagram: intersection showing left turn wait time
- [ ] Statistics overlay: safety data

### Research Sources
- [The Conversation: Why UPS drivers don't turn left](https://theconversation.com/why-ups-drivers-dont-turn-left-and-you-probably-shouldnt-either-71432)
- [Circuit: No Left Turns explanation](https://getcircuit.com/teams/blog/why-ups-drivers-dont-make-left-turns)
- [Cornell Networks blog](https://blogs.cornell.edu/info2040/2019/09/23/upss-no-left-turn-policy-where-game-theory-and-graph-theory-meet/)

---

## Section 5: The Human Side (Drivers vs. The Algorithm)

*Estimated time: 14:30 - 17:00*

### Key Points
1. Initial resistance: "A computer can't know my route better than me"
2. The "Beat the Computer" reframe — algorithm as challenge, not boss
3. Driver who beat ORION's prediction: 140 miles predicted, did it in 135
4. The ongoing dance: drivers provide inputs, algorithm learns

### Script/Talking Points

> When ORION first rolled out, not everyone was thrilled.
>
> Drivers who had been running the same route for ten or twenty years weren't eager to be told what to do by software. And honestly? They weren't always wrong. The early versions made mistakes. Suggested illegal turns. Ignored meal breaks.
>
> UPS had to change the framing. Instead of "the computer knows better," they put up sheets that said: "Beat the Computer."
>
> ORION would predict how many miles your route should take. Your job? Do better.
>
> One driver's route was usually 150 miles. ORION said he could do it in 140. He came back one day and said the system was "no good" — because he'd done it in 135.
>
> He still doesn't really credit ORION. To him, it's just another input, alongside his intuition. And maybe that's the point.
>
> The best systems don't replace human judgment. They give humans better information to work with.

### Visual Notes
- [ ] "Beat the Computer" graphic
- [ ] Driver testimonial style (text on screen, no face needed)
- [ ] Miles comparison: Predicted vs. Actual
- [ ] Balance diagram: Algorithm + Human intuition

### Research Sources
- [Fast Company article on driver adoption](https://www.fastcompany.com/3004319/brown-down-ups-drivers-vs-ups-algorithm)
- [BSR Case Study](https://www.bsr.org/en/case-studies/center-for-technology-and-sustainability-orion-technology-ups)

---

## Section 6: The Results

*Estimated time: 17:00 - 18:30*

### Key Points
1. Savings: 100 million miles/year, 10 million gallons of fuel
2. 2024 dynamic upgrade: additional 2-4 miles saved per driver per day
3. $300 million annual cost savings
4. 100,000 metric tons less CO2 emissions
5. 350,000 more packages delivered per year

### Script/Talking Points

> So what did all of this add up to?
>
> Since ORION's full deployment, UPS has saved approximately 100 million miles per year. That's 10 million gallons of fuel. 100,000 metric tons of carbon dioxide emissions — gone.
>
> The 2024 dynamic routing upgrade added another 2 to 4 miles saved per driver, per day. That's another 100 million miles annually.
>
> In dollars? Over $300 million in annual savings. On a $250 million investment.
>
> But maybe the most interesting number is this: 350,000 more packages delivered per year. Not by working harder. By routing smarter.

### Visual Notes
- [ ] Counter animation: 100M miles saved
- [ ] Fuel/emissions reduction graphic
- [ ] Dollar savings visualization
- [ ] Package delivery increase stat

### Research Sources
- Multiple sources confirm these figures

---

## Recap

*Estimated time: 18:30 - 19:30*

**Summary** (3-5 key takeaways):
1. Routing at scale is an impossibly complex problem — but it can be tamed with algorithms
2. The best solutions come from observing reality, not following rules
3. Small optimizations (like avoiding left turns) compound into massive savings
4. Technology works best when it enhances human judgment, not replaces it

**Transition to CTA**:
> Every day, millions of packages arrive at homes and businesses. And behind each one is a quiet system — invisible, reliable, constantly optimizing.
>
> That's the machine behind the machine.

---

## Call to Action (CTA)

*Goal: Gentle, low-pressure invitation*

**Primary CTA**:
> If you found this interesting, there are more stories like this coming. We're exploring the quiet systems behind credit cards, retail inventory, barcodes, and more. Subscribe if you want to see them.

**Secondary CTA** (optional):
> If there's a system you've wondered about — something invisible that makes the world work — leave it in the comments. I'm always looking for the next quiet machine to explore.

**Closing Line**:
> Thanks for watching. Take care.

---

## Production Notes

### B-Roll Shot List
1. UPS trucks on the road (stock footage)
2. Package sorting facility (stock footage if available)
3. Urban delivery sequences
4. Maps and routing visualizations
5. Intersection footage (demonstrating left vs. right turns)

### Graphics Needed
1. ORION system diagram
2. Data flow visualization
3. Right turn vs. left turn comparison
4. Statistics overlays (miles saved, fuel saved, etc.)
5. Timeline: 2003-2016 development
6. "Beat the Computer" leaderboard mock-up

### Music/Audio
- Background music: Ambient, calm, slightly electronic/lo-fi
- No dramatic stings or crescendos
- Think: late-night documentary, "sleepy" energy

### Tone Reminders
- Exploratory, not lecturing
- "Isn't this interesting?" not "You won't believe..."
- Pauses are okay
- Respect the viewer's intelligence

---

## Pre-Record Checklist

- [ ] Script reviewed and finalized
- [ ] Read-aloud test passed (check pacing)
- [ ] Time estimate within 15-20 minutes
- [ ] Visual notes complete
- [ ] B-roll sources identified
- [ ] Graphics drafted or assigned
- [ ] Music selected and licensed

---

## Research Sources

### Primary Sources
- [Supply Chain Dive: UPS adds dynamic routing to ORION](https://www.supplychaindive.com/news/ups-orion-route-planning-analytics-data-logistics/601673/)
- [BSR: Looking Under the Hood - ORION Technology Adoption at UPS](https://www.bsr.org/en/case-studies/center-for-technology-and-sustainability-orion-technology-ups)
- [Fast Company: Brown Down - UPS Drivers Vs. The UPS Algorithm](https://www.fastcompany.com/3004319/brown-down-ups-drivers-vs-ups-algorithm)
- [The Conversation: Why UPS drivers don't turn left](https://theconversation.com/why-ups-drivers-dont-turn-left-and-you-probably-shouldnt-either-71432)

### Supporting Sources
- [Ascend Analytics: How UPS's ORION System Slashed Delivery Costs](https://www.ascendanalytics.co/post/how-upss-orion-system-slashed-delivery-costs-with-route-optimization)
- [Circuit: Why UPS Drivers Don't Make Left Turns](https://getcircuit.com/teams/blog/why-ups-drivers-dont-make-left-turns)
- [Cornell Networks Blog: UPS's No-Left-Turn Policy](https://blogs.cornell.edu/info2040/2019/09/23/upss-no-left-turn-policy-where-game-theory-and-graph-theory-meet/)
- [INFORMS ORMS Today: ORION delivers success for UPS](https://pubsonline.informs.org/do/10.1287/orms.2016.03.10/full/)

---

## Notes

- Consider reaching out to UPS PR for additional materials or clearance
- Verify all statistics against UPS annual reports if possible
- The "atoms in the universe" comparison needs fact-checking (dramatic, but is it accurate for 120 stops?)
- Driver testimonials could be powerful — check for public interviews or Reddit AMAs
