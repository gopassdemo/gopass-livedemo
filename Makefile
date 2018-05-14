update:
	git add -p
	git commit
	git tag -f start
noremote:
	git remote remove origin || echo "no remote origin found"
run: noremote
	rm -rf /Users/martin/.password-store-shared
	doitlive play runit.sh
	git reset --hard start
	cd /Users/martin/.password-store-shared && git fetch --tags && git push -f origin start:master
remote:
	git remote add origin git@github.com:gopassdemo/gopass-livedemo.git || echo "already have remote origin set up"
push: remote
	git push
	git remote remove origin
