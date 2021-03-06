FROM buildpack-deps:bionic

ENV IROOT=/installs
ENV FFEAD_CPP_PATH=${IROOT}/ffead-cpp-4.0
ENV PATH=${FFEAD_CPP_PATH}:${PATH}
ENV TROOT=/

RUN mkdir /installs

WORKDIR /

COPY *.sh ./
RUN chmod 755 *.sh

RUN ./install_ffead-cpp-dependencies.sh

WORKDIR /

RUN ./install_ffead-cpp-framework-forsql.sh

WORKDIR /

RUN ./install_ffead-cpp-httpd.sh

WORKDIR /

RUN ./install_ffead-cpp-nginx.sh

WORKDIR /

CMD ./run_ffead.sh apache mysql
