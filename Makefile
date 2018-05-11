update:
	git add -p
	git commit
	git tag -f start
noremote:
	git remote remove origin || /bin/true
run: noremote
	rm -rf ../shared-mount
	doitlive play runit.sh
	git reset --hard start
remote:
	git remote add origin git@github.com:gopassdemo/demo-mount.git || /bin/true
push: remote
	git push
	git remote remove origin
