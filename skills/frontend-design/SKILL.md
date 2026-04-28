---
name: frontend-design
description: Create distinctive, production-grade frontend interfaces with exceptional UI quality. Use when building websites, landing pages, dashboards, web apps, React/Vue/Svelte components, or visual prototypes.
---

# Frontend Design

Build the actual usable interface, not a generic mockup. Treat every request as a chance to deliver a designed product surface with clear hierarchy, precise spacing, strong responsiveness, and working interactions.

## Operating Standard

Start by identifying the product context, audience, primary workflow, and emotional tone. Pick a concrete design direction before coding, then commit to it across typography, color, layout, motion, component shape, imagery, copy density, and interaction states.

Push quality by adding the details a real product designer would expect:
- Use a memorable visual concept tied to the domain, not a reusable AI layout.
- Make the first viewport immediately communicate the product, task, or object.
- Prefer real controls, real states, and realistic content over placeholder sections.
- Use visual assets when the surface is a website, product page, game, portfolio, venue page, or brand/object-focused experience.
- Build dense operational UIs as calm, scannable tools; build expressive sites and games with more visual risk.
- Keep the interface usable at mobile, tablet, and desktop widths.

## Design Direction

Choose one clear direction and make every choice reinforce it. Examples: editorial, industrial, clinical, luxury, utilitarian, playful, cinematic, brutalist, archival, studio-grade, scientific, high-contrast, quiet enterprise, tactile craft, sports broadcast, financial terminal.

Avoid defaulting to:
- Purple/blue gradients, glass cards, glowing blobs, and generic SaaS hero layouts.
- Inter/Arial/system-only typography unless the product context truly calls for restraint.
- Identical rounded cards for every section.
- Explaining the UI inside the UI instead of making the workflow obvious.

## Implementation Rules

Use the existing project stack and conventions first. If building a standalone artifact, keep dependencies minimal and choose the simplest framework that still supports the required experience.

For every meaningful UI element, include:
- Default, hover/focus, active/selected, disabled, loading, and empty/error states when relevant.
- Keyboard-accessible controls and visible focus treatment.
- Responsive sizing with stable dimensions for boards, grids, charts, toolbars, cards, and buttons.
- Text that fits inside containers without overlap or viewport-based font scaling.
- Semantic markup and labels for interactive controls.

For visual polish:
- Use CSS variables or tokens for color, spacing, radius, shadows, and motion.
- Use real typography hierarchy: display, section, body, metadata, controls.
- Use icons for tool actions where an icon is familiar; use tooltips for icon-only controls.
- Use motion sparingly but deliberately: transitions should clarify state, not distract.
- Reserve large hero type for real hero surfaces; keep dashboards compact and scannable.

## Quality Bar

Before finishing, check the work like a product review:
- Does the design have a recognizable point of view?
- Does the primary workflow work without explanation?
- Are the main interaction states implemented?
- Does mobile layout feel intentionally designed rather than squeezed?
- Are colors balanced instead of one-note?
- Are accessibility, contrast, focus, and keyboard behavior acceptable?
- Are there no overlapping elements or clipped labels?
- If assets are referenced, do they render and frame correctly?
