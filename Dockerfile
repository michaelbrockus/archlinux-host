#
# author: Michael Brockus.
# gmail: mailto:michaelbrockus@gmail.com
#
FROM archlinux:base

ENV DEBIAN_FRONTEND noninteractive
ENV LANG 'C.UTF-8'
ENV CI 1

RUN pacman -Syu --noconfirm \
    && pacman -Syu --noconfirm \
       python \
       python-setuptools \
       python-wheel \
       python-pip \
       sudo \
       clang \
       gcc \
       gcc-d \
       rust \
       mesa \
       java-environment=11 \
       git \
       ccache \
       cppcheck \
       pkg-config \
       openssl-1.0

RUN pip3 -q install --upgrade pip \
    && python3 -m pip -q install \
       meson==0.57.1 \
       pyinstaller==4.0 \
       ninja==1.10.0.post2 \
       cmake==3.18.2.post1 \
       PyQt5==5.15.1 \
       pytest==6.1.2 \
       pytest-mock==3.3.1 \
       pytest-xdist==2.1.0 \
       pytest-benchmark==3.2.3 \
       discord.py==1.6.0 \
       python-dotenv==0.15.0
