# The directory 'configs' contains my dotfiles and configs for a linux environment.
 
## Tmux panes — usage

This repository provides pane keybindings in `configs/tmux/dot_tmux.conf`.
Common pane commands (use your tmux prefix, default `C-b`):
- `Prefix + |` : `split-window -h` (left/right split)
- `Prefix + -` : `split-window -v` (top/bottom split)
- `Prefix + h/j/k/l` : move focus L/D/U/R (vim-style)
- `Prefix + H/J/K/L` (holdable) : resize pane by 5 cells (L/D/U/R)

Quick examples:
- To make a horizontal split: press `Prefix` then `|`.
- Jump between panes: `Prefix + h` or `Prefix + l`.
- Resize while holding: repeatedly press `Prefix + L` to widen.

Tips:
- Windows are numbered from 1 (`set -g base-index 1`).
- Enable vim-tmux-navigator mappings for direct `C-h/j/k/l` navigation from vim.
- Check active prefix at runtime: `tmux show -g prefix`.
- Reload tmux config: `tmux source-file ~/.tmux.conf` or restart tmux.

## Checkout git submodules

    git submodule init
    git submodule update

## Dotfiles can be installed by the following rake commands:

    rake -T # to see tasks
    rake install # to install configs

## The submodules can be updated by running these commands, then committing the changes:

    git submodule foreach git checkout master
    git submodule foreach git pull

## Configs can be removed by a command similar to:

    find /home/ajh/ -lname '*.dotfiles*' -print0 | xargs -0 rm

Just replace the -lname search which the dotfiles cloned directory

# multiple github accounts

To workaround issues where git cli need creds to multiple github accounts, try a command like below:

	GIT_SSH_COMMAND='ssh -i ~/.ssh/id_ed25519 -o IdentitiesOnly=yes' git push
