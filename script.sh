#FROM instruction

docker build -t refaldy/from 01-from

#RUN instruction

docker build -t refaldy/run 02-run

docker build -t refaldy/run 02-run --progress=plain --no-cache

#CMD instruction

docker build -t refaldy/command 03-command

docker image inspect refaldy/command

docker container create --name command refaldy/command

docker container start command

docker container logs command

#LABEL instruction

docker build -t refaldy/label 04-label

docker image inspect refaldy/label

#ADD instruction

docker build -t refaldy/add 05-add

docker container create --name add refaldy/add

docker container start add

docker container logs add

#COPY instruction

docker build -t refaldy/copy 06-copy

docker container create --name copy refaldy/copy

docker container start copy

docker container logs copy

#.dockerignore

docker build -t refaldy/ignore 07-ignore

docker container create --name ignore refaldy/ignore

docker container start ignore

docker container logs ignore

#EXPOSE instruction

docker build -t refaldy/expose 08-expose

docker image inspect refaldy/expose

docker container create --name expose -p 8080:8080 refaldy/expose

docker container start expose

docker container logs expose

docker container stop expose

#ENV instruction

docker build -t refaldy/env 09-env

docker image inspect refaldy/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 refaldy/env

docker container start env

docker container logs env

docker container stop env

#VOLUME instruction

docker build -t refaldy/volume 10-volume

docker image inspect refaldy/volume

docker container create --name volume -p 8080:8080 refaldy/volume

docker container start volume

docker container logs volume

docker container inspect volume

#e662d8226493ba5b9677513ca33b584d2be71d5b0fb71c86d4b26ae50c335400

docker volume ls

docker container stop volume

#WORKDIR instruction

docker build -t refaldy/workdir 11-workdir

docker container create --name workdir -p 8080:8080 refaldy/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

#USER instruction

docker build -t refaldy/user 12-user

docker container create --name user -p 8080:8080 refaldy/user

docker container start user

docker container exec -i -t user /bin/sh

#ARG instruction

docker build -t refaldy/arg 13-arg --build-arg app=refaldy

docker container create --name arg -p 8080:8080 refaldy/arg

docker container start arg

docker container exec -i -t arg /bin/sh





