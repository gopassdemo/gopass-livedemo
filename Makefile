update:
	git add -p
	git commit
	git tag -f start
noremote:
	git remote remove origin || echo "no remote origin found"
run: noremote
	rm -rf /tmp/shared-mount
	doitlive play runit.sh
	git reset --hard start
remote:
	git remote add origin git@github.com:gopassdemo/demo-mount.git || echo "already have remote origin set up"
push: remote
	git push
	git remote remove origin
