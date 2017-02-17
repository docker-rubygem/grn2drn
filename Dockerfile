FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.5

RUN gem install grn2drn --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["grn2drn-schema"]
CMD ["--help"]
