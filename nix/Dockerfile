FROM nixos/nix

RUN nix-channel --update

RUN nix-build -A pythonFull '<nixpkgs>'

#RUN nix-env -iA nixos.git
#\
#		nixos.nodePackages.npm \
#		nixos.fzfnixos.ripgrep \
#		nixos.sudo \
#		nixos.curl

RUN adduser --disabled-password --gecos '' nvimuser
RUN adduser nvimuser sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER nvimuser

RUN mkdir -p /home/nvimuser/workdir
WORKDIR /home/nvimuser/workdir

COPY ../configs/* .


ENTRYPOINT bash
