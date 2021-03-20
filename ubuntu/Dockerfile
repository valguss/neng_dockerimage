#get oficial docker image
FROM ubuntu:18.04

#mount the dir
VOLUME /root/host

WORKDIR /root

# Prepare for wallet
RUN apt update
RUN apt install -y wget sudo
RUN wget https://github.com/ShorelineCrypto/nengcoin/releases/download/v1.6.0.1/nengcoin_v1.6.0.1_ubuntu18.04_x86_64.tgz
RUN tar -xvzf nengcoin_v1.6.0.1_ubuntu18.04_x86_64.tgz
RUN cd Ubuntu_18.04/x86_64; sh prepare_neng.sh

# Install wallet
RUN cd ~
RUN wget https://github.com/ShorelineCrypto/nengcoin/releases/download/v1.6.0.0/nengcoin_v1.6.0.0_ubuntu16.04.tgz
RUN tar xvfz nengcoin_v1.6.0.0_ubuntu16.04.tgz
RUN mkdir ~/.nengcoin
RUN cp nengcoin_v1.6.0.0_ubuntu16.04/nengcoin.conf  ~/.nengcoin/
RUN cp nengcoin_v1.6.0.0_ubuntu16.04/nengcoind /usr/local/bin

# Install cheeta
RUN wget https://github.com/ShorelineCrypto/cheetah_cpuminer/archive/refs/tags/v1.3.0.tar.gz
RUN tar xvfz v1.3.0.tar.gz
RUN chmod +x cheetah_cpuminer-1.3.0/cheetah.sh

COPY ./cmd.sh /root/cmd.sh
RUN chmod +x cmd.sh
CMD ["/root/cmd.sh"]

COPY ./entrypoint.sh /root/entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]