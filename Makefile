update:
	git add -p
	git commit
	git tag -f start
run:
	doitlive play runit.sh
	git reset --hard start
