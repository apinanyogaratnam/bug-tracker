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

auth:
	grep -v '^#' .env.local | grep -e "CR_PAT" | sed -e 's/.*=//' | docker login ghcr.io -u USERNAME --password-stdin
