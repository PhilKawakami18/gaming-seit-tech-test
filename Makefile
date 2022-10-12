APP_IMAGE=:latest
APP_RUNNING_PORT=4000

start:
	docker run -d -p ${APP_RUNNING_PORT}:4000 --name sbg-tech-test-app ngr05/sbg-gaming-seit-tech-test${APP_IMAGE}

stop:
	docker stop sbg-tech-test-app
	docker rm sbg-tech-test-app

logs:
	docker logs -f sbg-tech-test-app

test: stop start
	# Feel free to put your test commands here