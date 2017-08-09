FROM debian:stable 

# Install basic applications and libraries
RUN apt-get update && apt-get install --fix-missing -y \
        ipython \
        vim \
        wget \
        gcc \
        g++ \
        python-pip \
        python-setuptools

# Install data processing and visualization libraries
RUN apt-get install -y \
        python-numpy \
        python-qt4 \ 
        python-qwt5-qt4 \
        python-guiqwt \
        python-h5py \
        python-opencv \
        python-lxml

# install other sardana dependencies
RUN apt-get install -y python-ply pymca


# install Tango
RUN apt-get install -y python-tango

# install taurus and sardana
RUN apt-get install -y \
        python-taurus \
        python-sardana 

