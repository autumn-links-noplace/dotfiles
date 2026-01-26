# TODO

- [ ] Fix clipboard when SSHing from MacBook (Ghostty) → grugu (zsh + tmux 3.6a): OSC52 escapes are not reaching the local clipboard. Investigate and implement one of the following:
  - Add inline OSC52 pipeline to `configs/tmux/dot_tmux.conf` for copy-mode and a prefix yank key.
  - Add a helper script `configs/tmux/bin/osc52` and call it from tmux bindings (with size limits and error messages).
  - Document and recommend the local fallback: `ssh grugu 'tmux show-buffer' | pbcopy` or `ssh grugu 'tmux capture-pane -p -S -32768' | pbcopy`.
  - Test helper with: `printf '\033]52;c;"$(printf 'osc52-test' | base64)"\a'` inside tmux and verify local paste.
