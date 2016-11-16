FROM debian 8.6
RUN apt update
RUN apt upgrade -y
RUN apt install -y build-essential
RUN wget -O 'Gauche-0.9.5.tgz' 'https://github.com/shirok/Gauche/archive/release0_9_5.tar.gz'
RUN tar xzf Gauche-0.9.5.tgz && cd Gauche-0.9.5 && ./configure && make && make install
