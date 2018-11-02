FROM ubuntu:16.04
USER root
RUN apt-get update
RUN apt-get install python-pip \
 swig \
 libssl-dev \
 python-dev \
 python3-dev \
 libffi-dev \
 protobuf-compiler \
 libprotobuf-dev -y

RUN pip install --upgrade pip
#RUN pip install --no-cache-dir virtualenv
#RUN virtualenv openhtf_venv
#RUN /bin/bash -c "source openhtf_venv/bin/activate"
RUN pip install setuptools --upgrade
RUN pip install --no-cache-dir openhtf
COPY tests /root/tests