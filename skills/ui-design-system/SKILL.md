---
name: ui-design-system
description: Create and improve high-quality UI design systems, tokens, component standards, responsive rules, accessibility states, and developer handoff documentation.
---

# UI Design System

Create systems that make excellent interface work repeatable. The goal is not just tokens; it is a coherent visual language with durable component behavior, accessible states, and clear implementation rules.

## Operating Standard

Ground the system in product context: audience, density, brand tone, device mix, accessibility needs, and the kinds of workflows the UI must support. Then define a design language that can scale without flattening every screen into identical cards.

Push the system by covering:
- Design principles that are specific enough to guide tradeoffs.
- Color roles with semantic usage, contrast targets, and interaction states.
- Type scale with real usage rules for dashboards, forms, navigation, marketing, and dense data.
- Spacing, layout, grid, radius, elevation, borders, and motion tokens.
- Component anatomy, variants, states, accessibility notes, and responsive behavior.
- Content rules for labels, empty states, validation, destructive actions, and confirmations.

## Token Work

Treat generated tokens as a starting point. Refine them manually for contrast, hierarchy, product tone, and real component use. Do not ship palettes that are only lighter/darker versions of one hue unless the brand explicitly requires it.

## Component Standards

For each component, specify:
- Purpose and when not to use it.
- Anatomy and required/optional regions.
- Sizes, density modes, responsive behavior, and overflow handling.
- Default, hover, focus, active, selected, disabled, loading, empty, error, warning, and success states where applicable.
- Keyboard interactions and ARIA expectations.
- Token usage and theming hooks.
- Examples with realistic content, not lorem ipsum.

Prioritize components that carry product risk: navigation, forms, tables, filters, search, modals, side panels, menus, notifications, cards, charts, and destructive workflows.

## Quality Bar

Before finishing, verify:
- The system supports both common and edge states.
- Components can be composed without nested-card clutter.
- Typography and spacing work for compact enterprise screens as well as expressive pages.
- Color contrast meets WCAG expectations for text and controls.
- Tokens are named semantically, not by visual appearance alone.
- Developer handoff includes enough detail to implement without guessing.
