# Agent Guidelines for .dotfiles Repository

## Repository Structure & Dotfile Management

Config files live in `./configs/<tool>/` with `dot_` prefix (e.g., `configs/neovim/dot_config/nvim/init.lua`). The `rake install` command symlinks these to `$HOME`, transforming `dot_` → `.` (e.g., `dot_config` → `.config`). This means `~/.config/nvim/init.lua` is a symlink pointing back to `./configs/neovim/dot_config/nvim/init.lua`.

**Critical for Agents:**
- ✅ Always edit source files in `./configs/*/` - changes immediately affect the system via symlinks
- ❌ Never edit files in `~/.config/` or `~/.*` directly - they are symlinks to this repo
- To find a config: look in `./configs/<tool>/dot_*` (e.g., `~/.zshrc` → `./configs/zsh/dot_zshrc`)

Use `rake install:<group>` to install configs, add `force=true` to replace existing files.

## Build/Test Commands
- `rake -T` - List all available tasks
- `rake install` - Install all dotfiles (use `force=true` to replace existing files)
- `rake install:vim` - Install specific group configs (vim, git, zsh, tmux, etc.)
- `rake test` - Run all Test::Unit tests in test/
- `ruby test/test_config_file.rb` - Run single Test::Unit file
- `rspec` - Run all RSpec tests in spec/
- `rspec spec/dotfiles/unmanaged_file_additions_spec.rb` - Run single RSpec file

## Code Style
- **Language**: Ruby 2.x+ (see .ruby-version)
- **Indentation**: 2 spaces, no tabs
- **Modules**: Organize code under `Dotfiles` namespace
- **Naming**: Use snake_case for methods/variables, CamelCase for classes/modules
- **Requires**: Use explicit requires at top, relative paths from lib/
- **Error handling**: Raise RuntimeError with descriptive messages for install failures
- **File operations**: Use FileUtils for mkdir_p, ln_s, rm, touch operations
- **Debug output**: Guard debug puts with `if Dotfiles.debug` checks
- **Paths**: Use Pathname for path manipulation, File.expand_path for symlinks
- **Tests**: RSpec for spec/, Test::Unit for test/ - follow existing patterns

## Landing the Plane (Session Completion)

**When ending a work session**, you MUST complete ALL steps below. Work is NOT complete until `git push` succeeds.

**MANDATORY WORKFLOW:**

1. **File issues for remaining work** - Create issues for anything that needs follow-up
2. **Run quality gates** (if code changed) - Tests, linters, builds
3. **Update issue status** - Close finished work, update in-progress items
4. **PUSH TO REMOTE** - This is MANDATORY:
   ```bash
   git pull --rebase
   bd sync
   git push
   git status  # MUST show "up to date with origin"
   ```
5. **Clean up** - Clear stashes, prune remote branches
6. **Verify** - All changes committed AND pushed
7. **Hand off** - Provide context for next session

**CRITICAL RULES:**
- Work is NOT complete until `git push` succeeds
- NEVER stop before pushing - that leaves work stranded locally
- NEVER say "ready to push when you are" - YOU must push
- If push fails, resolve and retry until it succeeds
