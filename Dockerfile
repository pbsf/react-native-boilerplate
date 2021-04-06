FROM node:10.19.0-stretch
EXPOSE 19000 19001 19002 19006

RUN yarn global add expo-cli

ADD yarn-start.sh .
RUN chmod +x yarn-start.sh