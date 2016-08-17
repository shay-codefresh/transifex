FROM node:latest
RUN apt-get -q -y update && \
    apt-get -q -y install \
    curl \
    ssh \
    git \
    sshpass 
RUN curl https://bootstrap.pypa.io/ez_setup.py -o - | python
WORKDIR /src
RUN git clone http://code.transifex.com/transifex-client.git
RUN  cd transifex-client &&\
 python setup.py install
