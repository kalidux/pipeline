 
.PHONY: build-push-docker-image
build-push-docker-images: 
	for i in linux/arm64 linux/amd64 linux/arm/v7 linux/arm/v6
	@DOCKER_BUILDKIT=1 docker buildx build \
		--platform $i \
		--output "type=image,push=true" \
		-t kalidux/test:hey .
	done
