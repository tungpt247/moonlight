#Confirgaration

	Required:
	Install Vagrant lastest version

	Install Virtual Box lastest version

	Install Chefdk latest version


####Set /etc/hosts to owner user
	  $ sudo chown -R user_name /etc/hosts
	  

####Set around SSH
#####Show vagrant configuration
	    $ vagrant ssh-config --host webhost

#####Add to ssh config
    $ vagrant ssh-config --host webhost >> ~/.ssh/config

#####Login to webhost node
    $ ssh webhost

####Define webhost node
	  nodes/webhost.json
	  {
    	"run_list" : [
	      "recipe[xxx]"
	      ],
	    "automatic" : {
      		"ipaddress": "webhost"
	    }
	  }

####Bootstrap webhost node
  $ knife solo cook webhost
