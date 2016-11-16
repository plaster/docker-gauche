FROM debian:jessie
RUN apt update \
	&& apt upgrade -y \
	&& apt install -y wget build-essential \
	&& wget --no-verbose -O Gauche-release0_9_5.tar.gz 'https://github.com/shirok/Gauche/archive/release0_9_5.tar.gz' \
	&& tar xzf Gauche-release0_9_5.tar.gz \
	&& cd Gauche-release0_9_5 \
	&& ./configure \
	&& make \
	&& make install
