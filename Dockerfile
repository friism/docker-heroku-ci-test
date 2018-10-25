FROM buildpack-deps:bionic-curl

WORKDIR /ci

RUN curl -sSLo ci https://sprettur.herokuapp.com/sprettur
RUN chmod a+x ci
ENV PATH /ci:$PATH
