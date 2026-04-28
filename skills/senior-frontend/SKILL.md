---
name: senior-frontend
description: Build, optimize, and review production frontend applications using React, Next.js, TypeScript, CSS/Tailwind, state management, accessibility, and performance tooling.
---

# Senior Frontend

Work like the owner of the frontend surface: preserve existing architecture, ship working UI, and raise the quality bar on usability, accessibility, performance, and maintainability.

## Execution Workflow

1. Inspect the existing project structure, package manager, framework, routing model, styling system, and component conventions.
2. Find the nearest matching patterns before creating new abstractions.
3. Implement the smallest coherent feature slice that fully satisfies the user workflow.
4. Cover loading, empty, error, disabled, focus, and responsive states when the UI can enter them.
5. Run the relevant formatter, typecheck, lint, tests, and build when available.
6. For visual changes, run the app and inspect the result in a browser when feasible.

## Quality Bar

Push frontend work beyond "it compiles":
- Keep components cohesive, typed, and easy to scan.
- Use semantic HTML before custom div-based controls.
- Make keyboard and screen-reader behavior part of the implementation.
- Prevent layout shift with stable dimensions for images, grids, controls, and dynamic regions.
- Avoid text overlap and clipped content across realistic viewport widths.
- Use icons, menus, segmented controls, sliders, toggles, and tabs where those are the expected UI primitives.
- Keep enterprise/productivity UIs dense but calm; keep marketing/brand UIs visually distinctive and asset-backed.
- Do not introduce heavy dependencies unless they remove real complexity.

## Performance

Measure or reason from evidence before optimizing. Prioritize:
- Bundle splitting and removing unused dependencies.
- Server/client component boundaries in Next.js.
- Memoization only where it prevents real repeated work.
- Image sizing, lazy loading, preloading critical assets, and font loading.
- Avoiding unnecessary global state, large client payloads, and hydration cost.

## Review Checklist

Before finishing, verify:
- No console errors from the implemented flow.
- TypeScript and lint issues are resolved or explicitly reported.
- UI works at mobile and desktop widths.
- Focus order and keyboard controls are reasonable.
- API calls handle pending, success, empty, and failure cases.
- Tests or manual verification cover the risk introduced by the change.
