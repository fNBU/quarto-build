from debian:latest

run ln -s --force /bin/bash /bin/sh

run apt-get -y update && apt-get -y upgrade && apt-get -y install wget git curl ssh gpg file htop
run wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.40/quarto-1.6.40-linux-amd64.tar.gz

run mkdir -p ~/opt
run tar -C ~/opt -xvzf quarto-1.6.40-linux-amd64.tar.gz
run ln -s ~/opt/quarto-1.6.40/bin/quarto /usr/bin/quarto

# needed for latex math rendering
run apt-get -y update && apt-get -y install texlive-full
run apt-get -y update && apt-get -y install librsvg2-bin

entrypoint [ "/bin/bash" ]