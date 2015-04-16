Confirgaration step by step
===========================
Install Vagrant lastest version
Install Virtual Box lastest version
Install Chefdk latest version

Set /etc/hosts to owner user
  $ sudo chown -R user_name /etc/hosts

Set around SSH
  Show vagrant configuration
    $ vagrant ssh-config --host webhost

  Add to ssh config
    $ vagrant ssh-config --host webhost >> ~/.ssh/config

  Login to specify node
    $ ssh webhost
    or
    $ ssh vagrant@chef.vagrant.dev -i /Users/tungphan/2015/training/chef-repo/.kitchen/kitchen-vagrant/kitchen-chef-repo-default-ubuntu-1204/.vagrant/machines/default/virtualbox/private_key -p 2222 vagrant@chef.vagrant.dev

Define node at nodes folder
  nodes/webhost.json
  {
    "run_list" : [
      "recipe[xxx]"
    ],
    "automatic" : {
      "ipaddress": "webhost"
    }
  }

Run cookbooks to the specify node
  $ knife solo cook webhost
