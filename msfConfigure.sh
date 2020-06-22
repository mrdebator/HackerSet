#! /bin/bash
# Author: Ansh Chandnani (mrdebator)

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer
sudo apt-get install build-essential libreadline-dev libssl-dev libpq5 libpq-dev libreadline5 libsqlite3-dev libpcap-dev git-core autoconf postgresql pgadmin3 curl zlib1g-dev libxml2-dev libxslt1-dev libyaml-dev curl zlib1g-dev gawk bison libffi-dev libgdbm-dev libncurses5-dev libtool sqlite3 libgmp-dev gnupg2 dirmngr

cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

# sudo plugin so we can run Metasploit as root with "rbenv sudo msfconsole"
git clone git://github.com/dcarley/rbenv-sudo.git ~/.rbenv/plugins/rbenv-sudo

exec $SHELL

RUBYVERSION=$(wget https://raw.githubusercontent.com/rapid7/metasploit-framework/master/.ruby-version -q -O - )
rbenv install $RUBYVERSION
rbenv global $RUBYVERSION
ruby -v

# Nmap
git clone https://github.com/nmap/nmap.git
cd nmap
./configure
make
sudo make install
make clean

cd /opt
sudo git clone https://github.com/rapid7/metasploit-framework.git
sudo chown -R `whoami` /opt/metasploit-framework
cd metasploit-framework
gem install bundler
bundle install

# Creating symlink
cd /opt/metasploit-framework
sudo bash -c 'for MSF in $(ls msf*); do ln -s /opt/metasploit-framework/$MSF /usr/local/bin/$MSF;done'

echo "export PATH=$PATH:/usr/lib/postgresql/10/bin" >> ~/.bashrc
. ~/.bashrc

sudo usermod -a -G postgres `whoami`
sudo su - `whoami`

cd /opt/metasploit-framework/
./msfdb init
