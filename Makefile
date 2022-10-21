APP_IMAGE=:latest
APP_RUNNING_PORT=4000

start:
	docker run -d -p 4000:4000 --name sbg-tech-test-app ngr05/sbg-gaming-seit-tech-test${APP_IMAGE}

stop:
	docker stop sbg-tech-test-app
	docker rm sbg-tech-test-app

logs:
	docker logs -f sbg-tech-test-app

test: 
    docker run --network host -t postman/newman run "https://www.getpostman.com/collections/bcd75a02a6fa6a264425" 

	