# Agent & Skill Workflow

This configuration uses OpenCode's built-in `plan` and `build` agents with domain-specific skills for structured workflows.

## Built-in Agents

**Plan Agent** (`@plan` or Tab to switch)
- **Purpose:** Read-only analysis and planning
- **Permissions:** Cannot edit files, bash commands require approval
- **Temperature:** Default (balanced planning)
- **Usage:** Load a skill, analyze requirements, create plans

**Build Agent** (`@build` or Tab to switch)
- **Purpose:** Write code and documents
- **Permissions:** Can edit/write files, most commands allowed
- **Temperature:** Default (focused implementation)
- **Usage:** Execute plans, write code/docs, run tests

## Available Skills

| Skill | Description | Use For |
|-------|-------------|---------|
| `code` | TDD workflow with code quality principles | Implementation planning and coding |
| `product` | PRD creation with user stories | Requirements gathering and documentation |
| `techdesign` | Technical architecture and design specs | System design and documentation |
| `beads` | Issue tracking with beads CLI | Task management workflow |

## Workflow Examples

**Code Implementation:**
```bash
# Step 1: Plan with TDD workflow
@plan
> skill(code)
> I need to implement user authentication

# Step 2: Implement the plan
@build
> Implement the authentication plan above
```

**Product Requirements:**
```bash
# Step 1: Gather requirements
@plan
> skill(product)
> We need to add a dashboard feature

# Step 2: Write PRD
@build
> Create the PRD for the dashboard
```

**Technical Design:**
```bash
# Step 1: Plan architecture
@plan
> skill(techdesign)
> Design the caching layer

# Step 2: Document design
@build
> Write the technical design document
```

**Issue Tracking:**
```bash
# Step 1: Review tasks
@plan
> skill(beads)
> Show me ready tasks

# Step 2: Work on tasks
@build
> Start working on task #42
```

## Switching Agents

- **Tab key**: Cycle through primary agents (plan ↔ build)
- **@mention**: `@plan` or `@build` to invoke directly
- **Context preservation**: Skills remain loaded when switching agents

## Tips

1. **Load skills early** - They provide context for the entire conversation
2. **Combine skills** - You can load multiple: `skill(code)` + `skill(beads)`
3. **Plan first** - Use `@plan` to analyze before `@build` to implement
4. **Small cycles** - Plan → Build → Plan → Build for iterative development

---

# TODO

* [ ] sandbox
* [ ] add git commit to workflow. Would want a remote setup in this case.

# Proposed Color Mapping

## Cool Colors for Plan Agents

Blue family:
1. #4A90E2 (sky blue)
2. #5B9BD5 (soft blue)
3. #6CA6CD (steel blue)
4. #4682B4 (steel blue classic)
5. #1E90FF (dodger blue)
6. #87CEEB (sky blue light)
7. #00BFFF (deep sky blue)
8. #4169E1 (royal blue)
9. #6495ED (cornflower blue)
10. #ADD8E6 (light blue)
Green family:
11. #50C878 (emerald)
12. #66CDAA (aquamarine)
13. #5F9EA0 (cadet blue)
14. #3CB371 (medium sea green)
15. #2E8B57 (sea green)
16. #20B2AA (light sea green)
17. #48D1CC (medium turquoise)
18. #40E0D0 (turquoise)
Purple family:
19. #9370DB (medium purple)
20. #8A7FC4 (lavender)

## Warm Colors for Build Agents

Red family:
1. #E74C3C (crimson)
2. #DC143C (carmine)
3. #FF6B6B (coral red)
4. #CD5C5C (indian red)
5. #F08080 (light coral)
6. #FA8072 (salmon)
7. #E9967A (dark salmon)
8. #FF4500 (orange red)
9. #FF6347 (tomato)
Orange family:
10. #FF8C42 (mango)
11. #FFA500 (bright orange)
12. #FF7F50 (coral)
13. #FF8C00 (dark orange)
14. #FFA07A (light salmon)
15. #FF9966 (atomic tangerine)
Yellow family:
16. #FFB347 (pastel orange)
17. #FDB813 (golden)
18. #FFAA33 (orange yellow)
19. #FFD700 (gold)
20. #FFC107 (amber)
