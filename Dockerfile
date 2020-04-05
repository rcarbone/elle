FROM debian:bullseye-slim

MAINTAINER rocco <rocco@tecsiel.it>

ENV PROJECT elle
ENV USER    elle
ENV SHELL   lsh

# Install software
COPY $PROJECT /usr/local/$PROJECT

# Install the software
RUN set -ex &&          \
    apt-get update &&   \
    apt-get install -qq \
      libcrypt1         \
      libevent-2.1-7    \
      sudo              \
      less &&           \
      rm -rf /var/lib/apt/lists/*

# 1. Add valid login shell
# 2. Create user and group
# 3. Change ownership
# 4. Add user to sudoers
RUN \
    add-shell /usr/local/$PROJECT/bin/$SHELL && \
    useradd --no-create-home --user-group --home-dir /usr/local/$PROJECT --shell /usr/local/$PROJECT/bin/$SHELL --comment 'LIS user' $USER && \
    chown -R $USER:$USER /usr/local/$PROJECT && \
    echo "$USER   ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER    $USER
WORKDIR /usr/local/$PROJECT

# Go for fun
CMD ["/usr/local/elle/bin/lsh"]
