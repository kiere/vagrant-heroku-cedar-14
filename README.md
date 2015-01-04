# Vagrant Heroku Cedar-14 Box

Based off project: https://github.com/jackdb/pg-app-dev-vm

* Ubuntu 14.04
* PosgreSQL 9.4
* Ruby (currently 2.1.5)
* Rubygems (currently 2.2.2)
* Imagemagick
* Capybara-webkit dependencies (QT, webkit)

This box is published in Atlas as 'lazygray/heroku-cedar-14' and can be used simply by
adding `config.vm.box = 'lazygray/heroku-cedar-14'` to your `Vagrantfile`.
