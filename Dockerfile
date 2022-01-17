FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade && \
		apt-get install  -y curl  sudo git
RUN apt install build-essential -y --no-install-recommends
#npm install
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

RUN adduser --disabled-password --gecos '' nvimuser
RUN adduser nvimuser sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER nvimuser
WORKDIR /home/nvimuser
# install nvim using appimage
RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.6.1/nvim.appimage
RUN sudo chmod u+x ./nvim.appimage
RUN sudo ./nvim.appimage --appimage-extract
RUN sudo ./squashfs-root/AppRun --version
RUN sudo mv squashfs-root / && sudo ln -s /squashfs-root/AppRun /usr/bin/nvim


# nvim plugin setup
RUN mkdir -p /home/nvimuser/.config/nvim/autoload
RUN sudo curl -fLo /home/nvimuser/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN sudo apt-get install -y fzf

RUN mkdir -p /home/nvimuser/workdir
WORKDIR /home/nvimuser/workdir

COPY ./configs/* .
RUN sudo npm install -g npm@8.3.0
RUN sh ./nvim_setup.sh

RUN mkdir -p /home/nvimuser/workspace
WORKDIR /home/nvimuser/workspace/

ENTRYPOINT nvim "$@"
