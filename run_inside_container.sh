mkdir catkin_ws/src/
tar xjf tiago_sim_hospital.tar.bz2 -C catkin_ws/src/
cd catkin_ws/
bash src/tiago_sim_hospital/tiago_sim_hospital_packages.sh
rosinstall src /opt/ros/melodic src/tiago_sim_hospital/tiago_sim_hospital_repositories.rosinstall
source /opt/ros/melodic/setup.sh
catkin build -DCATKIN_ENABLE_TESTING=0

