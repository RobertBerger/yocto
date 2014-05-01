#
# yocto Dockerfile
#
# https://github.com/RobertBerger/yocto
#

# Pull base image.
FROM reliableembeddedsystems/ubuntu-base

# Ubuntu and Debian Yocto dependencies:
# The essential and graphical support packages you need for a supported Ubuntu or Debian distribution are shown in the following command: 
RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath libsdl1.2-dev xterm

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root
