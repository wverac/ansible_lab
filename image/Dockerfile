FROM opensuse/tumbleweed:latest

RUN zypper ref && zypper -n up && \
           zypper -n in openssh vim ansible git hostname iputils netcat && \
           zypper clean -a        
RUN ssh-keygen -A
WORKDIR /root
