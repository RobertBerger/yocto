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

# update /usr/local/sbin/run
ADD ./bin /usr/local/sbin
RUN sudo chmod +x /usr/local/sbin/run

# somehow permissions got screwed up
RUN chown -R genius:genius /home/genius

# Set environment variables.
#ENV HOME /home/genius

# Define working directory.
#WORKDIR /home/genius

# Default User
#USER genius

# default command
CMD ["/bin/bash"]

