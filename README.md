This is a fork from https://github.com/WataruMaeda/react-native-boilerplate
that wraps the boilerplate in a docker environment.

Requirements:
docker and docker-compose.

Steps before cloning the repository:
# docker volume create dev-root
# docker pull node:10.19.0-stretch
# docker container run --rm -it -v dev-root:/root node:10.19.0-stretch '/bin/bash'

In Container:
# cd /root
# git clone https://github.com/pbsf/react-native-boilerplate
# cd react-native-boilerplate
# cp .env env

(If you want to run the code on a mobile device using the Expo app,
the mobile device and your PC must be on the same network, and
the variable "PHYSICAL_HOST_IP" on the env file must contain
the PC's IP. You must also update the variable "YARN_START_CMD"
to start.)

Finally, to start Expo, run:
# ./run.sh