VERSION := 1.0

tag-git:
	git tag -m "v${VERSION}" v${VERSION}

push-git-tag:
	git push --tags

workflow:
	make tag-git && make push-git-tag
