FROM debian:jessie
RUN apt update \
	&& apt upgrade -y \
	&& apt install -y wget build-essential \
	&& wget -O 'Gauche-0.9.5.tgz' 'https://github.com/shirok/Gauche/archive/release0_9_5.tar.gz' \
	&& tar xzf Gauche-0.9.5.tgz \
	&& cd Gauche-0.9.5 \
	&& ./configure \
	&& make \
	&& make install
