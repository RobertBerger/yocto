if [ "$#" -ne 1 ]; then
    echo "Usage:"
    echo "./special_tag_push.sh <tag>"
    exit
fi

set -x
docker images
docker tag reslocal/yocto:latest reliableembeddedsystems/yocto:$1
docker images
docker login --username reliableembeddedsystems
docker push reliableembeddedsystems/yocto:$1
set +x
