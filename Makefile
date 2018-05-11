update:
	git add -p
	git commit
	git tag -f start
noremote:
	git remote remove origin
run: noremote
	rm -rf ../demo-mount
	doitlive play runit.sh
	git reset --hard start
	cd ../demo-mount && git reset --hard start
remote:
	git remote add origin git@github.com:gopassdemo/demo-mount.git
push: remote
	git push
	git remote remove origin
