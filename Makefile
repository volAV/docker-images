.PHONY: builder-ubuntu-2204
builder-ubuntu-2204:
	${MAKE} OS=ubuntu REL=22.04 builder

.PHONY: builder-ubuntu-2404
builder-ubuntu-2404:
	${MAKE} OS=ubuntu REL=24.04 builder

.PHONY: builder
builder:
	docker build --build-arg REL=${REL} --build-arg USER_NAME=ubuntu -t volAV/${@}:${OS}-${REL} -f ${@}/Dockerfile.${OS} ${@}

.PHONY: builder-no-cache
builder-no-cache:
	docker build --no-cache --build-arg REL=${REL} --build-arg USER_NAME=ubuntu -t volAV/${@}:${OS}-${REL} -f ${@}/Dockerfile.${OS} ${@}
