IMAGE_NAME 	:=	petems/centos-7-docker-vagrant-insecure-key

all: image

image:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d -p "2229:22" $(IMAGE_NAME)
