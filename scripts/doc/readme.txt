Say we have a git repo here:

/home/rber/projects/docker/yocto

and we want to make a directory which contains branches of this repo as directories

mkdir -p /home/rber/projects/docker/yocto-top

now clone the original repo locally in there:

cd /home/rber/projects/docker/yocto-top

git clone ssh://rber@localhost/home/rber/projects/docker/yocto yocto-test

cd yocto-test

cp -r ~/projects/meta-mainline-top/meta-mainline-test/bin .

# create a new branch
git branch devel
git co devel
git branch -a

# back to master
git co master
git branch -a

# create the folder, which matches the branch
cd /home/rber/projects/docker/yocto-top
 ./yocto-test/bin/create-branch-build.sh yocto-test . devel

you should see:
 Switched to branch 'devel'
 creating directory ./devel/clone
 ls: cannot access yocto-test/clone: No such file or directory


# in order to be able to pull it over from yocto-test you also need to create a branch
# . with the same name in yocto

cd /home/rber/projects/docker/yocto/
git co master
git branch devel
git branch -a

git co master
git branch -a

# now we need a way to pull branches and fixed over to yocto
cd /home/rber/projects/docker/yocto/scripts
cp ~/projects/meta-mainline/scripts/pull-from-meta-mainline-top.sh .
mv pull-from-meta-mainline-top.sh pull-from-yocto-top.sh

# and you need to cook pull-from-yocto-top.sh

