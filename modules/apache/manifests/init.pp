class apache {
	package { "apache2":
		ensure => installed,
	}

	service { "apache":
		enable  => true,
		ensure  => running,
		require => Package["apache2"],
	}
}
