# bionikalia_docker
Dockerfile with scripts for Bionikalia 2021 hackathon at PUT

Build image
```bash
sudo bash build.sh
```

Run docker for the first time (if you have CUDA installed)
```bash
sudo bash run_gpu.sh <image_name:tag> <container_name> <path_to_shared_ws> 
```

Run docker for the first time (no CUDA installed)
```bash
sudo bash run_cpu.sh <image_name:tag> <container_name> <path_to_shared_ws> 
```

`<image_name:tag>` should look like this `bionikalia:master`
`<container_name>` should look like this `bionikalia_gpu`
`<path_to_share_ws>` should look like this `"/home/krzysztof/Projects/bionikalia/catkin_ws/:/catkin_ws/"`


