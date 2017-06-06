#!/bin/bash

cd ~
 
echo "clone repo"
 
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo "compile dynamic bash ext"

cd ~/.rbenv && src/configure && make -C src

echo "adding to path"

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo "restart and confirm rbenv"

command reset

type rbenv

echo "upgrade rbenv"

cd ~/.rbenv
git pull

echo "ruby_build to allow ruby installation via rbenv"

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

cd 

echo "available ruby version"
rbenv versions

read version 'echo "choose a version and click enter"'

echo "installing ruby version $version"
rbenv install $version

ruby -v

# prevent installing documentation of gems
cd

echo "gem: --no-document" > ~/.gemrc

# bundler manages your dependencies
gem install bundler

# rake helps with database migrations creation
gem install rake

echo "installed ruby and gems"

echo "install rvm"

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

echo "installing stable version"
\curl -sSL https://get.rvm.io | bash -s stable --ruby

echo "rvm install complete"