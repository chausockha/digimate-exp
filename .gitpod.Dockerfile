FROM gitpod/workspace-full

USER root

RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections

RUN apt update -y \
    && apt install wireguard -y \
    && sudo apt -f install resolvconf -y