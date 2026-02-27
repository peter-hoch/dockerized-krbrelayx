FROM  ubuntu:noble

WORKDIR /opt

ENV TZ=Europe/Berlin

RUN apt update; 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata; \
    apt-get install -y python3 python3-pip git; apt-get clean; \
    ln -s /bin/python3 /bin/python; \
    git clone https://github.com/fortra/impacket.git;  \
    git clone https://github.com/cannatag/ldap3.git ; \
    git clone https://github.com/dirkjanm/krbrelayx.git; \
    python3 -m pip   install ./impacket/ --break-system-packages; \
    python3 -m pip   install ./ldap3/ --break-system-packages; \
    ln -s /bin/python3 /bin/python; \
    chmod +x /opt/krbrelayx//*.py; \
    echo "\nPATH=\$PATH:/opt/krbrelayx/\n" >> /root/.bashrc; \
    echo "\nPATH=\$PATH:/opt/impacket/examples/\n" >> /root/.bashrc


CMD [ "/bin/bash" ]

WORKDIR /app