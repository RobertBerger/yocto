#
# yocto Dockerfile
#
# https://github.com/RobertBerger/yocto
#

# Pull base image.
FROM reliableembeddedsystems/ubuntu-base

# Ubuntu and Debian Yocto dependencies:
# The essential and graphical support packages you need for a supported Ubuntu or Debian distribution are shown in the following command: 
RUN sudo apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath libsdl1.2-dev xterm

# qemu dependencies
RUN sudo apt-get install -y iptables

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
