xhost +local:root

if [ -z "$3" ]
then
	SHARED_VOLUME="/home/krzysztof/Projects/bionikalia/catkin_ws/:/catkin_ws/"
else
	SHARED_VOLUME=$3
fi

docker run -it \
    -v $SHARED_VOLUME \
    --gpus all \
    --name=$2 \
    --shm-size=16g \
    --ulimit memlock=-1 \
    --memory-swap=-1 \
    --env="DISPLAY=:1" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    -e QT_GRAPHICSSYSTEM=native \
    --env="NVIDIA_VISIBLE_DEVICES=all" \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --privileged \
    -v /usr/lib64:/usr/hostLib64 \
    -e LD_LIBRARY_PATH=/usr/hostLib64 \
    -e LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/ \
    --network=host \
    -p 2222:2222 \
    $1\
    bash


