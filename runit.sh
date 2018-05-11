# doitlive shell: /bin/zsh
# doitlive commentecho: true
# doitlive speed: 1
# doitlive prompt: ➜ {dir.cyan} $

. ./setup.zshenv

#Basics
#
#OK, lets first show what we have
gopass ls
#
#Display one of the secrets
gopass show accounts/justwatch.com
#
#Create credentials for another github account
gopass generate accounts/github.com/anotheruser
gopass show accounts/github.com/anotheruser
#
#Fuzzy search
gopass gith
#
#Add an existing bank account
gopass insert banking/mybank.com
gopass show banking/mybank.com
#
#Store Metadata
gopass insert banking/mybank.com creditcard
gopass insert banking/mybank.com validity
gopass show banking/mybank.com creditcard
gopass show banking/mybank.com
gopass edit banking/mybank.com
#
#END (Basics)
clear
#Internals
gopass show banking/mybank.com
#
#Change password
gopass generate banking/mybank.com
gopass show banking/mybank.com
git log -n 5
#
#Recover old password
git reset --hard HEAD~
git log -n 5
gopass show banking/mybank.com
#
#END (Internals)
clear
#Mounts and Recipients
#
#Multiple Collections aka Mounts
gopass mounts
#
#Clone an existing repository, here a local example
gopass clone --path /tmp/shared-mount git@github.com:gopassdemo/demo-mount.git shared
gopass mounts
gopass ls
#
#Sharing passwords with collaborators
gopass recipients
gopass recipients add torvalds@kernel.org
#
#Add a secret to shared
gopass generate shared/anothersecret
#
#Pushing changes to remote
gopass sync
#
# Remove mount
gopass mounts remove shared
gopass ls
#
#END (Mounts and Recipients)
clear
