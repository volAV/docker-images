.PHONY: builder-ubuntu-2204
builder-ubuntu-2204:
	${MAKE} OS=ubuntu REL=22.04 builder

.PHONY: builder-ubuntu-2304
builder-ubuntu-2304:
	${MAKE} OS=ubuntu REL=23.04 builder

.PHONY: builder
builder:
	docker build --build-arg REL=${REL} -t volAV/${@}:${OS}-${REL} -f ${@}/Dockerfile.${OS} ${@}
