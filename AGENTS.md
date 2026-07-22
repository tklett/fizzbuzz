# AGENTS.md

## Repository overview
- This repository contains small Pyret examples centered on counting and FizzBuzz.
- `fizzbuzz.arr` is the primary FizzBuzz implementation described in `README.md`.
- `count-from-1-to-100.arr` is a simple counting program and is the file currently exercised by CI.

## Key files
- `README.md` — repository overview, runtime notes, and testing description.
- `fizzbuzz.arr` — FizzBuzz logic, counting helpers, and inline `check:` tests.
- `count-from-1-to-100.arr` — simple count-up example.
- `.github/workflows/pyret-ci.yml` — GitHub Actions workflow for Pyret validation.

## Working conventions
- Keep examples simple and educational; prefer small, readable Pyret functions over abstract helpers.
- Preserve the repository's current style: top-level function definitions, straightforward conditionals, and minimal comments.
- When changing `fizzbuzz.arr`, update the inline `check:` blocks if behavior changes.
- Update `README.md` when repository behavior or usage instructions change.

## Validation
- The repository documents testing through Pyret `check:` blocks in `fizzbuzz.arr`.
- CI installs `pyret-lang` with npm and runs:
  - `npx pyret count-from-1-to-100.arr`
- If you modify Pyret source files, prefer validating with the existing workflow command or an equivalent local Pyret run.

## Notes for future agents
- In this task environment, use absolute file paths when referring to repository files in agent responses or task notes.
- Avoid adding extra tooling unless it is required by the task; this repository currently relies on the existing Pyret workflow.
