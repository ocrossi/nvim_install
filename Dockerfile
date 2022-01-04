FROM alpine:latest

ENV UID="1000" \
    UNAME="nvimuser" \
    GID="1000" \
    GNAME="nvimuser" \
    SHELL="/bin/bash" \
    UHOME=/home/nvimuser

RUN apk update && apk upgrade && apk --no-cache add curl sudo bash xz

# Create HOME dir
RUN mkdir -p "${UHOME}" \
    && chown "${UID}":"${GID}" "${UHOME}" \
# Create user
    && echo "${UNAME}:x:${UID}:${GID}:${UNAME},,,:${UHOME}:${SHELL}" \
    >> /etc/passwd \
    && echo "${UNAME}::17032:0:99999:7:::" \
    >> /etc/shadow \
# No password sudo
    && echo "${UNAME} ALL=(ALL) NOPASSWD: ALL" \
    > "/etc/sudoers.d/${UNAME}" \
    && chmod 0440 "/etc/sudoers.d/${UNAME}" \
# Create group
    && echo "${GNAME}:x:${GID}:${UNAME}" \
    >> /etc/group


USER $UNAME



RUN mkdir -p /home/nvimuser/
WORKDIR /home/nvimuser/

COPY ./configs/* .

ENTRYPOINT bash
