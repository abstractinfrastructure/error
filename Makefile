build-docker:
	docker build -t $$(whoami)/error:main .

build-push:
	docker push $$(whoami)/error:main