VERSION := 1.0.0

tag-git:
	git tag -m "v${VERSION}" v${VERSION}

push-git-tag:
	git push --tags

workflow:
	make tag-git && make push-git-tag

up:
	docker-compose up

submodule:
	git submodule update --recursive --remote
