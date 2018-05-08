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
#Sync our local changes
gopass sync
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
#Internals
gopass show banking/mybank.com
#
#Change password
gopass generate banking/mybank.com
gopass show banking/mybank.com
git log
#
#Recover old password
git reset --hard HEAD~
git log
gopass show banking/mybank.com
