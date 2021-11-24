xhost +local:root

docker run -it \
	--name=$2 \
	--shm-size=16g \
	--ulimit memlock=-1 \
	--memory-swap=-1 \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--volume="/$HOME/.Xauthority:/root/.Xauthority:rw" \
	-e QT_GRAPHICSSYSTEM=native \
	--privileged \
	-v /usr/lib64:/usr/hostLib64 \
	-e LD_LIBRARY_PATH=/usr/hostLib64 \
	--network=host \
	$1\
	bash
