# Prompts Directory

This directory contains repo-local prompts for AI-assisted content creation workflows.

## Purpose

Prompts stored here are specific to the saas202548 YouTube channel and support:
- Video script generation
- Title and thumbnail ideation
- Description writing
- Content research
- Analytics interpretation

## Naming Conventions

Follow a consistent naming pattern for prompts:

```
cc-<project>-<purpose>-v<version>.md
```

Examples:
- `cc-saas202548-script-outline-v1.md` - Generate video script outlines
- `cc-saas202548-title-generator-v1.md` - Generate video title options
- `cc-saas202548-thumbnail-concepts-v1.md` - Generate thumbnail ideas
- `cc-saas202548-description-writer-v1.md` - Write video descriptions

## Prompt Structure

Each prompt file should include:

```markdown
# <Prompt Name>

## Purpose
What this prompt is for.

## Inputs Required
What context/information the user must provide.

## Expected Output
What the AI should produce.

## Prompt
[The actual prompt text]

## Usage Notes
Any tips or variations.
```

## How Prompts Are Used

1. **Script Writing**: Use prompts to generate outlines, then refine with human judgment
2. **Titles**: Generate multiple options, A/B test with thumbnails
3. **Thumbnails**: Generate concept descriptions to brief a designer or AI tool
4. **Descriptions**: Generate SEO-optimized descriptions with proper structure

## Pipeline Integration

Prompts integrate with the content pipeline at specific stages:

| Stage | Prompt Type |
|-------|-------------|
| Idea Development | Research prompts, angle exploration |
| Scripting | Outline prompts, hook generators |
| Post-Production | Title/description/tag generators |
| Optimization | Thumbnail concept prompts |

## Best Practices

1. **Version your prompts** - When improving a prompt, increment the version
2. **Document what works** - Add usage notes after testing
3. **Keep prompts focused** - One prompt per task
4. **Include examples** - Show sample outputs when helpful
5. **Track effectiveness** - Note which prompts produce best results

## Related Directories

- `/pipelines/prompts/` - Stage-specific prompts tied to pipeline steps
- `/templates/` - Output templates that prompts should follow
