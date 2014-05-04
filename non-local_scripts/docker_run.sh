IMAGE_NAME="reslocal/yocto"
HOST_FOLDER="${HOME}/yocto-image"
IMAGE_FOLDER="/home/genius/yocto"
# this is a hack against permission denied
if [ ! -d ${HOST_FOLDER} ];
then
     echo "${HOST_FOLDER} does not exist, creating it"
     mkdir -p ${HOST_FOLDER}
     chmod a+w ${HOST_FOLDER}
else
     echo "${HOST_FOLDER} exists"
fi
# let's run it - we'll share a folder with the host
echo "+ ID=\$(docker run -i -t -d -v ${HOST_FOLDER}:${IMAGE_FOLDER}:rw ${IMAGE_NAME} /bin/bash)"
ID=$(docker run -i -t -d -v ${HOST_FOLDER}:${IMAGE_FOLDER}:rw ${IMAGE_NAME} /bin/bash)
# let's attach to it
echo "+ docker attach ${ID}"
docker attach ${ID}
