# The directory 'configs' contains my dotfiles and configs for a linux environment.

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
