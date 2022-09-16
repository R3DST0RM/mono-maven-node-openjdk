FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y ssh
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get install -y nodejs
RUN DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" apt-get install -y \
  build-essential \
  openjdk-11-jdk \
  maven

RUN apt-get update \
  && apt-get install -y --no-install-recommends gnupg dirmngr ca-certificates \
  && rm -rf /var/lib/apt/lists/* \
  && export GNUPGHOME="$(mktemp -d)" \
  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
  && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc \
  && gpgconf --kill all \
  && rm -rf "$GNUPGHOME" \
  && apt-key list | grep Xamarin \
  && apt-get purge -y --auto-remove gnupg dirmngr

RUN echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" > /etc/apt/sources.list.d/mono-official-stable.list \
  && apt-get update \
  && apt-get install -y mono-runtime mono-complete ca-certificates-mono \
  && rm -rf /var/lib/apt/lists/* /tmp/*

RUN apt-get update && apt-get install -y git

CMD /bin/bash
