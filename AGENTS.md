# Agent Guidelines for .dotfiles Repository

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
