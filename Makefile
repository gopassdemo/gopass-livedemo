update:
	git add -p
	git commit
	git tag -f start
run:
	rm -rf shared-mount
	doitlive play runit.sh
	git reset --hard start
	cd ../demo-mount && git reset --hard start
