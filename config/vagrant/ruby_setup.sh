#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/ruby_setup.sh'"

RUBY_VERSION='2.1.5'
GEMS_VERSION='2.2.2'

# Setup Ruby using rbenv
if [ -z `which rbenv`]; then
  cd
  git clone git://github.com/sstephenson/rbenv.git .rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc

  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

  rbenv install $RUBY_VERSION
  rbenv global $RUBY_VERSION
fi

if [ -z `which gem`]; then
  # Install RubyGems
  wget http://production.cf.rubygems.org/rubygems/rubygems-${GEMS_VERSION}.tgz
  tar xzf rubygems-${GEMS_VERSION}.tgz
  cd rubygems-$GEMS_VERSION
  ruby setup.rb
  cd ..
  rm -rf rubygems-${GEMS_VERSION}*
fi

if [ -z `which bundle` ]; then
  gem install bundler --no-rdoc --no-ri
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/ruby_setup.sh'"
