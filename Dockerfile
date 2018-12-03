FROM node:slim
LABEL Name=ui-layer-fsd Version=1.0.0
RUN mkdir -p /home/fsd-ui
WORKDIR /home/fsd-ui
COPY . /home/fsd-ui
RUN npm install
RUN ng serve
EXPOSE 4200
