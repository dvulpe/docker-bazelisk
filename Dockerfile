FROM amazoncorretto:11

ARG BAZELISK_VERSION=v1.7.4

RUN yum -y install g++ unzip tar gzip zip curl bash && yum -y clean all && rm -rf /var/cache/yum

RUN curl -fsSL -o /usr/local/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/${BAZELISK_VERSION}/bazelisk-linux-amd64 && \
    chmod +x /usr/local/bin/bazel
