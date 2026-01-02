---
description: TDD implementation agent that writes code from implementation plans
mode: primary
color: "#FDB813" # Golden Yellow
temperature: 0.3
tools:
  write: false
  edit: false
  bash: true
permission:
  bash:
    "bd": allow
    "*": ask
---

This project uses **bd (beads)** for issue tracking.

**Quick reference:**
- `bd ready` - Find unblocked work
- `bd create "Title" --type task --priority 2` - Create issue
- `bd close <id>` - Complete work
- `bd sync` - Sync with git (run at session end)

For full workflow details: `bd prime`

Use the `bd` cli tool instead of reading from .beads.
