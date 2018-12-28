build:
	@ docker build . -t mongoe
up:
	@ docker run -d --privileged --name mongoe -v /sys/fs/cgroup:/sys/fs/cgroup:ro mongoe
enter:
	@ docker exec -it mongoe bash
