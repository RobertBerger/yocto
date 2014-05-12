HERE=$(pwd)

PRJ="yocto"

echo "+  git checkout master"
git checkout master

echo "+ cd ../../${PRJ}-top/${PRJ}-test/"
cd ../../${PRJ}-top/${PRJ}-test/
echo "+  git checkout master"
git checkout master

echo "+ cd ${HERE}"

for BRANCH in master devel phusion
do
  echo "+ ----->"
  echo "+ cd ../../${PRJ}-top/${PRJ}-test/"
  cd ../../${PRJ}-top/${PRJ}-test/
  echo "+  git checkout ${BRANCH}"
  git checkout ${BRANCH}
  echo "+ cd ${HERE}"
  cd ${HERE}
  echo "+ cd .."
  cd ..
  echo "+ git checkout ${BRANCH}"
  git checkout ${BRANCH}
  echo "+ git pull ../${PRJ}-top/${PRJ}-test"
  git pull ../${PRJ}-top/${PRJ}-test
  echo "+ git log --name-status HEAD^..HEAD"
  git log --name-status HEAD^..HEAD
  echo "+ git checkout master"
  git checkout master
  echo "+ cd ${HERE}"
  cd ${HERE}
  echo "+ press <ENTER> to go on"
  read r
  echo "+ <-----"
done

echo "+  git checkout master"
git checkout master

echo "+ cd ../../${PRJ}-top/${PRJ}-test/"
cd ../../${PRJ}-top/${PRJ}-test/
echo "+  git checkout master"
git checkout master

echo "+ cd ${HERE}"

echo "+ git status"
git status
