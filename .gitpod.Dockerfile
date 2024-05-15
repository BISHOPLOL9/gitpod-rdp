FROM gitpod/workspace-full

USER root

RUN apt-get update && \
    apt-get install -y xfce4 xfce4-goodies xrdp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
COPY xrdp-start.sh /usr/bin/xrdp-start.sh
RUN chmod +x /usr/bin/xrdp-start.sh

USER gitpod
