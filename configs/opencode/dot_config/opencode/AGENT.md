# notes directory

I take daily notes in markdown files on topics such as meetings, projects, todos. These are located at 

    ~/Documents/current

Some important ones are:

    ~/Documents/current/meeting.md # meeting notes
    ~/Documents/current/oncall_20250922.md # notes from a oncall shift
    ~/Documents/current/Project # notes about projects
    ~/Documents/current/DevEnv # development environments or design notes for services, infra, components
    ~/Documents/current/TODO.md # master todo list with related notes

Other documents (like project files) often have their own todo lists as well.

# output length

Users can control output length by placing a directive on its own line:

Syntax:
- `{N}l;` - Target approximately N lines (e.g., `200l;` for 200 lines)
- `{N}p;` - Target approximately N pages (e.g., `2p;` for 2 pages, where 1 page ≈ 70 lines)
- **Default**: 1 page (~70 lines from `tput lines`)

Examples:

    Create a technical design for user authentication
    1p;

    Analyze the current caching implementation
    150l;
