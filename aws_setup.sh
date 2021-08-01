#!/usr/bin/env bash
set -e    # Script stops with exit code 1 if something goes wrong.

sudo apt-get --yes --force-yes update
sudo apt-get --yes --force-yes install git                  \
                                       cmake                \
                                       python-pip           \
                                       python-dev           \
                                       libboost-all-dev     \
                                       libtiff5-dev         \
                                       libjpeg8-dev         \
                                       zlib1g-dev           \
                                       libfreetype6-dev     \
                                       liblcms2-dev         \
                                       libwebp-dev          \
                                       tcl8.6-dev           \
                                       tk8.6-dev            \
                                       libxml2-dev          \
                                       libxslt-dev          \
                                       python-tk            \
                                       python-scipy         \
                                       python-skimage       \
                                       protobuf-compiler

sudo pip install numpy        \
                 protobuf     \
                 pillow       \
                 tqdm         \
                 scikit-learn
