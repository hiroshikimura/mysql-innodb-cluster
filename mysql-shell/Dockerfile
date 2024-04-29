FROM ubuntu:22.04

CMD ["bash"]

ENV LC_ALL=ja_JP.UTF-8
ENV LANG=ja_JP.UTF-8

WORKDIR /mysql-shell
RUN apt clean && \
    apt -y update && \
    apt -y upgrade && \
    apt -y install wget gnupg lsb-release libcurl4 libpython3.10 libssh-4 git language-pack-ja
RUN locale-gen ja_JP.UTF-8
RUN wget https://dev.mysql.com/get/mysql-apt-config_0.8.29-1_all.deb && \
    printf "1\n2\n4\n" | dpkg -i mysql-apt-config_0.8.29-1_all.deb
RUN apt -y update && \
    apt -y upgrade
RUN apt -y install mysql-shell