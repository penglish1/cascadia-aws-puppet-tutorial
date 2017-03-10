# puppetmaster
node ip-10-0-12-164.us-west-2.compute.internal {
	# check for puppet configuration updates every five minutes
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user    => root,
		minute 	=> "*/5",
	}
}

# web1
node ip-10-0-12-73.us-west-2.compute.internal {
	include apache
}

# web2
node ip-10-0-12-126.us-west-2.compute.internal {
	include apache
}
