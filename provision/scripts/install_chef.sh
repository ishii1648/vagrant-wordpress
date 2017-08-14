#!/bin/bash

#yum update -y

#chefDKをインストール
wget https://packages.chef.io/files/stable/chef/13.2.20/el/6/chef-13.2.20-1.el6.x86_64.rpm -O /usr/local/chef-13.2.20-1.el6.x86_64.rpm
rpm -ivh /usr/local/chef-13.2.20-1.el6.x86_64.rpm

#PATHを追加(セッション間のみで構わない)
export PATH=/opt/chef/embedded/bin:$PATH

#knife-soloをインストール
yum -y install ruby-devel
gem install knife-solo

#Berkshelfをインストール
gem install berkshelf

#chefリポリポジトリを作成
cd /etc
knife solo init chef-repo
