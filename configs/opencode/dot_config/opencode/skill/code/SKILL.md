---
name: code
description: TDD workflow with code quality principles from Fowler, Martin, and McConnell for planning and implementing features
license: MIT
compatibility: opencode
metadata:
  workflow: tdd
  audience: developers
  principles: fowler,martin,mcconnell
---

## Plan

When planning, you analyze technical designs and create detailed implementation plans that follow Test-Driven Development principles. You:
1. **Read Technical Design**: Understand architecture, components, data models, requirements
2. **Identify Components**: Break design into implementable units
3. **Plan Test Cases**: For each component, list tests in order
4. **Plan Implementation**: Note approach, patterns, dependencies for each test/feature
5. **Identify Refactoring**: Spot cleanup opportunities
6. **Ask Clarifying Questions**: If design is unclear or missing details
7. **Use Todowrite**: Create task list with implementation phases
8. **Present Plan**: Output complete plan in context window for user review

Your implementation plan should include:

### 1. Component Breakdown
- List components/modules to implement
- Dependencies between components
- Implementation order (respecting dependencies and vertical slices)

### 2. Implementation Phases
- Break into logical phases (vertical slices preferred)
- Each phase delivers working, testable functionality
- Clear acceptance criteria per phase

### 3. Test Cases (Per Component)
- Listed in order: simple → complex
- Format: "Test that [behavior] when [condition]"
- Include: boundaries, happy path, errors, edge cases
- Note test type: unit, integration, or e2e

### 4. Implementation Notes
- Key algorithms or approaches to use
- Data structures needed
- Patterns to apply (table-driven, polymorphism, etc.)
- Integration points with existing code

### 5. Refactoring Opportunities
- Existing code that should be cleaned up
- Duplication to eliminate
- Complexity to reduce

### 6. Acceptance Criteria
- Measurable outcomes
- All tests pass
- Code coverage expectations met
- No regressions in existing functionality

## Build

When implementing, you execute implementation plans by writing tests and code. You:
1. **Read Implementation Plan**: Understand components, test cases, and implementation notes from the plan agent and from beads.
2. **Review Todos**: Check task list created by plan agent
3. **For Each Feature in Plan**:
   - Mark bead as in_progress
   - **Red**: Write failing test
   - Run test, confirm failure
   - **Green**: Implement minimal code to pass
   - Run test, confirm success
   - git commit
   - **Refactor**: Clean up code (small steps, run tests after each)
   - git commit
   - Mark bead as completed
4. **Run Full Test Suite**: Periodically ensure no regressions
5. **Verify Acceptance Criteria**: Check that all plan requirements met
6. **Report Completion**: Summarize what was implemented and test results

### You Do NOT

- ❌ Skip writing tests (always Red-Green-Refactor)
- ❌ Write code before tests (TDD discipline required)
- ❌ Commit without user approval (let user decide when to commit)
- ❌ Optimize prematurely (performance comes after correctness)

Your output is **working, tested code** following TDD principles and best practices.

## TDD Implementation Cycle

### Red Phase: Write Failing Test

**Process**
1. Write test first that describes expected behavior
2. Run test to confirm it fails for the right reason
3. Verify failure message is clear and correct
4. Mark bead as in_progress

**Fowler's Print/Debugger Rule**
Whenever you're tempted to use a print statement or debugger, write an automated test instead.

**Self-Testing Code**
Build a comprehensive test suite. If all tests pass, you should be confident the code is ready.

### Green Phase: Make It Pass

**Process**
1. Write simplest code that makes the test pass
2. Avoid premature optimization
3. Avoid premature abstraction
4. Run test to confirm it passes
5. Don't refactor yet (wait for Refactor phase)

**Focus on Working**
Get to green as quickly as possible. Don't worry about perfect code yet.

### Refactor Phase: Improve Quality

**Process**
1. Make small, atomic changes to improve code quality
2. One refactoring at a time
3. Run tests after each change to ensure they still pass
4. Extract duplication
5. Clarify names (variables, functions, classes)
6. Simplify complex logic
7. Mark bead as completed

**Boy Scout Rule**
Leave the code cleaner than you found it.

**Repeat Cycle**
After refactoring, move to next feature/test and repeat Red-Green-Refactor.

#### When to Refactor

- After getting a test to pass (always opportunity to clean up)
- When you see duplication (even small amounts)
- When names are unclear or misleading
- When logic is complex or nested deeply
- When function is too long (>20 lines is signal)

#### Common Refactorings

**Extract Method/Function**
- Long function → several smaller functions
- Complex logic → descriptive function name

**Rename Variable/Function**
- Unclear name → reveals intent
- Maintains behavior, improves readability

**Replace Magic Number with Named Constant**
- Literal value → named constant
- Documents meaning and purpose

**Introduce Parameter Object**
- Many parameters → object/struct holding related data
- Reduces parameter count, groups related data

**Replace Conditional with Polymorphism**
- Type-based switch/case → interface implementations
- More extensible, follows Open-Closed Principle

**Extract Class**
- Class doing too much → separate classes with single responsibilities
- Improves cohesion

**Inline Method**
- Over-fragmented code → consolidate if too granular
- Use sparingly (extraction is more common)

#### Refactoring Safety

**Tests Must Pass Before Starting**
- Only refactor when all tests are green
- Refactoring changes structure, not behavior

**Small Steps (One at a Time)**
- Make one refactoring at a time
- Don't combine multiple changes

**Run Tests After Each Change**
- Verify behavior unchanged after each refactoring
- If tests fail, revert and try smaller step

**Don't Change Behavior**
- Refactoring preserves external behavior
- Add tests before refactoring if coverage is insufficient

**Commit Frequently**
- Commit working state after each successful refactoring
- Easy to revert if something goes wrong
- Let user decide commit strategy

### Fast Feedback Loops

**Run Tests Frequently**
- After writing test (to see it fail)
- After making it pass (to see it succeed)
- After each refactoring (to ensure no breakage)
- Before moving to next feature

**Keep Tests Fast**
- Unit tests should run in milliseconds
- Entire test suite should run in <1 second if possible
- Slow tests reduce feedback speed and discourage running them

**Test Independence**
- Tests should not share state
- Each test should set up its own data (Arrange)
- Tests should run in any order
- Clean up resources after tests

**Test Structure: Arrange-Act-Assert**
- Arrange: Set up test data and preconditions
- Act: Execute the behavior being tested
- Assert: Verify expected outcome

## Test Strategy

**Testing Pyramid (Fowler)**
- Unit tests (70%): Fast, isolated, single component/function
- Integration tests (20%): Component interactions, dependencies
- End-to-end tests (10%): Full user workflows

**What to Test (Code Complete Ch. 22)**
- Boundaries: minimum, maximum, off-by-one values
- Happy path: normal, middle-of-road values
- Error conditions: invalid inputs, null/undefined, wrong types
- Edge cases: empty collections, zero, negative numbers
- Data flow: defined-used paths, state transitions
- Compatibility: interfaces with other components

**Test Ordering**
- Start with simplest case (often happy path with basic input)
- Progress to boundary cases
- Then error conditions
- Finally complex scenarios
- Build confidence incrementally

**Test Organization**
- Descriptive test names (describe behavior, not implementation)
- Arrange-Act-Assert structure
- One logical assertion per test
- Tests should be independent (no shared state)

## Code Implementation Guidelines

### Write for Humans First (Fowler)

"Any fool can write code that a computer can understand. Good programmers write code that humans can understand."

Prioritize readability and maintainability over cleverness.

### Naming Conventions

**Reveal Intent**
- Names should explain what, why, and how in that order of priority
- If a name requires a comment, the name needs improvement

**Pronounceable Names**
- Use words you can speak (avoid abbreviations like genymdhms)
- Makes discussion and code review easier

**Searchable Names**
- Single-letter names are hard to find (except loop counters i, j, k in short loops)
- Use descriptive names for anything with significant scope

**Avoid Mental Mapping**
- Don't force readers to translate names to concepts
- Use problem-domain terminology directly

**Consistency Over Cleverness**
- Follow project conventions
- Prefer boring, predictable code

### Function Quality

**Do One Thing (Single Responsibility)**
- Function should have one reason to change
- If you use "and" to describe it, it does too much

**One Level of Abstraction**
- All statements in function should be at same abstraction level
- High-level concepts shouldn't mix with low-level details

**Descriptive Names Eliminate Comments**
- Long, descriptive function names are better than short, cryptic ones
- Good names make comments unnecessary

**Minimal Parameters (≤3 ideal)**
- More than 3 parameters suggests need for parameter object
- Avoid boolean flags (create two functions instead)
- Avoid output parameters (return values instead)

**No Side Effects**
- Function should do only what its name promises
- Avoid temporal coupling (requiring specific call order)
- No hidden effects on global state

**Command-Query Separation**
- Functions either change state (command) or return data (query), not both
- Exception: builder patterns, fluent interfaces

**Prefer Exceptions to Error Codes**
- Exceptions separate happy path from error handling
- Error codes lead to deeply nested conditionals
- Use language-appropriate error handling (exceptions, Result types, error returns)

### Manage Complexity (McConnell)

**Table-Driven Methods**
- Replace complex nested conditionals with data lookups
- Move logic into data structures
- Easier to test and maintain

**Guard Clauses (Early Returns)**
- Handle error/edge cases at start of function
- Early return for special cases
- Keep happy path at lowest indentation level

**Extract Method Refactoring**
- Long functions → extract smaller, well-named functions
- Complex expressions → extract to descriptive boolean functions
- Repeated code → extract to shared function

**Replace Magic Numbers with Constants**
- Named constants reveal intent and purpose
- Easier to change in one place
- Self-documenting code

**Keep Nesting Shallow**
- Maximum 3 levels of indentation
- Use extraction, guard clauses, or early returns
- Reduces cognitive load

**Polymorphism Over Switch/Case**
- Type-based switching → interface/inheritance structure
- Replace Conditional with Polymorphism refactoring
- More extensible and testable

### Comments

**Explain Why, Not What**
- Code should be self-documenting (what it does)
- Comments explain intent, rationale, constraints (why it exists)
- If code needs "what" comment, refactor for clarity first

**Good Code Is Self-Documenting**
- Prefer clear code over explanatory comments
- Extract complex logic into well-named functions

**Document Assumptions**
- Preconditions, postconditions
- Expected invariants
- Business rules or domain constraints

**TODO Comments for Follow-Up**
- Mark areas needing future work
- Include ticket number or context
- Don't let TODOs accumulate indefinitely

### Defensive Programming

**Validate Inputs at Boundaries**
- Check parameters at public API boundaries
- Convert external data to internal types early
- Trust internal data after validation (barricades)

**Assertions for Impossible Conditions**
- Document assumptions that should never be violated
- Fail fast in development if assertion fires
- Consider how to handle in production (log, throw, or remove)

**Handle Errors Explicitly**
- Don't ignore exceptions or error codes
- Catch specific exceptions, not generic ones
- Provide context in error messages

**Fail Fast with Clear Messages**
- Detect errors as close to source as possible
- Error messages should be actionable
- Include relevant context (values, state)

### Error Handling

**Language-Appropriate Approaches**
- Exceptions: Java, Python, TypeScript (try-catch-finally)
- Result/Option types: Rust, functional languages (Ok/Err, Some/None)
- Error return values: Go (multiple returns, explicit error checking)

**Don't Return Null**
- Use Optional/Maybe patterns
- Return empty collections instead of null
- Null-safe operators (?., ??, ?:) where available

**Error Context**
- Include what went wrong
- Include relevant input values
- Include what was expected
- Stack traces for debugging

### Clean Code Principles (Martin)

**DRY (Don't Repeat Yourself)**
- Duplication is root of many maintenance problems
- Extract repeated code into shared functions
- Knowledge should have single source of truth

**Single Responsibility Principle**
- Each class/function has one reason to change
- Separate concerns into distinct modules

**Avoid Temporal Coupling**
- Functions shouldn't require specific call order
- Make dependencies explicit (parameters)
- Use builder pattern if construction is complex

**Descriptive Conditionals**
- Extract complex conditions into well-named boolean functions
- Makes logic readable and testable

### Best Code is No Code

- Every line is a liability: bugs, maintenance, complexity
- Before coding, exhaust alternatives: configuration, existing libraries, data-driven approaches, feature removal
- Start with minimal solution; add complexity only when testing demands it
- Prefer deleting code over adding code
- Trade-offs: Brevity vs Features vs Speed vs Robustness vs Flexibility (choose consciously)

## Design Philosophy

### Testing Pyramid

- **Unit tests (70%)**: Fast, isolated tests of individual functions/classes
- **Integration tests (20%)**: Test component interactions and dependencies
- **End-to-end tests (10%)**: Test critical user workflows through entire system

Focus most effort on unit tests (fast feedback, easy to maintain).

### Vertical Slices

- Deliver features end-to-end (UI → logic → data)
- Each slice should be independently testable and deployable
- Incremental value delivery
- Reduces integration risk

### Clean Architecture

**Dependencies Point Inward**
- Outer layers depend on inner layers, never reverse
- Entities (business rules) → Use Cases (application logic) → Interface Adapters (controllers, presenters) → Frameworks/Drivers (UI, DB, external services)

**Inner Layers Independent**
- Business rules don't know about UI or database
- Use dependency injection to enforce direction
- Test business logic without external dependencies

**Organize by Architectural Concerns**
- Not by file type (utils, helpers)
- By layer: entities, use-cases, adapters, frameworks
- Makes dependencies explicit and manageable

### YAGNI (You Aren't Gonna Need It)

**Build Only What's Needed Now**
- No speculative features or abstractions
- Don't build for imagined future requirements
- Add complexity only when it provides immediate value

**Simplest Thing That Works**
- Start with simple solution
- Refactor to more sophisticated if needed
- Prefer boring, proven approaches

### Performance Last

**Make It Work, Make It Right, Make It Fast**
- First: Correct behavior (tests pass)
- Second: Clean code (refactor)
- Third: Performance (only if needed)

**Optimize After Profiling**
- Don't guess at bottlenecks
- Measure with profiler to find actual slow code
- Many "optimizations" make code slower

## Language-Specific Considerations

While planning is language-agnostic, acknowledge that languages vary:

**Error Handling**
- Exceptions (Java, Python, TypeScript)
- Result/Option types (Rust, functional languages)
- Error return values (Go)

**Memory Management**
- Garbage collected (TypeScript, Python, Java, Go)
- Manual management (C, C++)
- RAII (Rust, C++)

**Null Safety**
- Nullable types (TypeScript with strictNullChecks)
- Optional/Maybe patterns
- Null-safe operators (?., ??, ?:)

**Immutability**
- Default mutable (Python, Java)
- Default immutable (functional languages)
- Opt-in immutability (const in TypeScript/JavaScript)

**Concurrency**
- Async/await (TypeScript, Python)
- Goroutines (Go)
- Threads (Java, Python)
- Promise/Future patterns

Consult language-specific style guides and community best practices.
