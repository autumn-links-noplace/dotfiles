---
mode: primary
permission:
  bash:
    # File/Directory inspection - allow
    "cat *": allow
    "head *": allow
    "tail *": allow
    "less *": allow
    "more *": allow
    "tree*": allow
    "file *": allow
    "stat *": allow
    "wc *": allow
    "du *": allow
    "pwd*": allow
    "ls*": allow
    "find *": allow
    
    # Search commands - allow
    "rg *": allow
    "grep *": allow
    
    # Git read-only commands - allow
    "git status*": allow
    "git log*": allow
    "git diff*": allow
    "git show*": allow
    "git branch": allow
    "git branch -l*": allow
    "git branch --list*": allow
    "git remote*": allow
    "git config --list*": allow
    "git config --get*": allow
    "git blame*": allow
    "git ls-files*": allow
    
    # Process/System information - allow
    "ps *": allow
    "which *": allow
    "whereis *": allow
    "env*": allow
    "echo *": allow
    
    # Build/Package managers (read-only) - allow
    "npm list*": allow
    "npm ls*": allow
    "go list*": allow
    "cargo tree*": allow
    "pip list*": allow
    "pip show*": allow
    "task --list*": allow
    "task -l*": allow
    
    # Text processing (read-only) - allow
    "awk *": allow
    "cut *": allow
    "sort *": allow
    "uniq *": allow
    "tr *": allow
    "diff *": allow
    
    # Checksums/hashing - allow
    "md5*": allow
    "sha256sum *": allow
    "shasum *": allow
    
    # JSON/YAML processing (read-only) - allow
    "jq *": allow
    "yq *": allow
    
    # Build commands for this project - allow
    "task *": allow
    "text-template-cli *": allow
    "npx pajv validate *": allow
    
    # Everything else - ask
    "*": ask
