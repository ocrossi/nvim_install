FROM alpine:latest

RUN apk add --update bzip2 gnupg perl curl bash sudo && \
    rm -rf /var/cache/apk/*

ENV LANG en_US.utf8
RUN adduser -h /home/tester -D -s /bin/bash tester
RUN addgroup sudo
RUN addgroup tester sudo
RUN echo " tester      ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /home/tester
USER tester

RUN touch .bash_profile && \
  curl https://nixos.org/nix/install | sh

RUN . /home/nix/.nix-profile/etc/profile.d/nix.sh && \
  nix-env -iA hies -f https://github.com/domenkozar/hie-nix/tarball/master

