# frequently used directories
alias aspen="cd -P ~/devel/aspen"
alias balsa="cd -P ~/devel/balsa"
alias cacao="cd -P ~/devel/cacao"
alias dotfiles="cd -P ~/devel/dotfiles"
alias poui="cd -P ~/devel/poui"
alias saba="cd -P ~/devel/saba"
alias snowbell="cd -P ~/devel/snowbell"

# aspen
alias aspen-rebuild="rails-rebuild && aspen-restart && echo 'bundle exec rake ts:rebuild bin:apply_sample_documents bin:apply_sample_logos_to_providers' | sh -x"
alias aspen-restart="rails-restart && script/delayed_job stop && script/delayed_job start"
