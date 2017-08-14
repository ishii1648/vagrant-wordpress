#!/bin/bash

rm -rf /etc/chef-repo/Berksfile

ln -s /home/vagrant/Berksfile /etc/chef-repo/
ln -s /home/vagrant/wordpress.json /etc/chef-repo/nodes/
ln -s /home/vagrant/solo.rb /etc/chef-repo/

cd /usr/local/src
wget https://github.com/ishii1648/cookbook-wordpress/archive/master.tar.gz
tar zxvf master.tar.gz
mv cookbook-wordpress-master /etc/chef-repo/site-cookbooks/wordpress

cd /etc/chef-repo
/opt/chef/embedded/bin/berks vendor cookbooks
chef-solo -c solo.rb -j nodes/wordpress.json
