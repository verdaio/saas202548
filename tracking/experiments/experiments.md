# Experiments Tracker

## Overview

This file tracks A/B tests, format experiments, and optimization efforts.

**Last Updated**: 2025-12-24

---

## Experiment Types

| Type | Description |
|------|-------------|
| `Thumbnail` | Testing different thumbnail styles |
| `Title` | Testing title formats |
| `Hook` | Testing different video opening styles |
| `Format` | Testing video length, structure |
| `Publish Time` | Testing different publish days/times |
| `CTA` | Testing different calls to action |
| `Other` | Any other experiments |

## Status Definitions

| Status | Description |
|--------|-------------|
| `Planned` | Experiment designed, not started |
| `Running` | Experiment in progress |
| `Analyzing` | Data collected, analyzing results |
| `Concluded` | Results in, decision made |

---

## Active Experiments

| ID | Type | Hypothesis | Status | Episodes | Start Date |
|----|------|------------|--------|----------|------------|
| EXP001 | [Type] | [What you expect to happen] | Planned | [EP IDs] | [Date] |
| | | | | | |

---

## Concluded Experiments

| ID | Type | Hypothesis | Result | Conclusion |
|----|------|------------|--------|------------|
| | | | | |

---

## Experiment Template

When designing an experiment:

### EXP[XXX]: [Name]

**Type**: [Thumbnail / Title / Hook / Format / Other]

**Hypothesis**:
> [If we do X, then Y will happen because Z]

**Variables**:
- **Control**: [Current approach]
- **Variant**: [New approach being tested]

**Success Metric**: [What you're measuring - CTR, watch time, etc.]

**Episodes Included**: [EP IDs]

**Duration**: [How long to run before evaluating]

---

**Results**:

| Metric | Control | Variant | Difference |
|--------|---------|---------|------------|
| [Metric] | | | |

**Conclusion**:
> [What did we learn? What will we do differently?]

**Action**:
- [ ] Adopt variant as new standard
- [ ] Keep control
- [ ] Need more data
- [ ] Inconclusive, archive

---

## Experiment Ideas

Ideas for future experiments:

| Idea | Type | Priority | Notes |
|------|------|----------|-------|
| Test faces vs no faces in thumbnails | Thumbnail | High | |
| Test question vs statement titles | Title | Medium | |
| Test 30-second vs 10-second hooks | Hook | Medium | |
| Test weekday vs weekend publish | Publish Time | Low | |

---

## Best Practices

### Running Good Experiments

1. **One variable at a time**: Don't test title AND thumbnail together
2. **Enough data**: Run for at least 3-5 videos before concluding
3. **Fair comparison**: Compare videos with similar topics if possible
4. **Document everything**: Capture the setup, not just results
5. **Accept negative results**: Learning what doesn't work is valuable

### Common Pitfalls

- Changing too many things at once
- Concluding too early (small sample)
- Cherry-picking data
- Forgetting to document the control

---

## Notes

*General notes about experimentation:*

> [Add notes here]
