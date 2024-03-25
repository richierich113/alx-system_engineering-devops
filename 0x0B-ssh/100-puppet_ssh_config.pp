# Puppet manifest to configure SSH client

# Ensure SSH client configuration file exists
file { '/home/your_username/.ssh/config':
  ensure => file,
}

# Set up SSH client configuration
file_line { 'Turn off passwd auth':
  path   => '/home/your_username/.ssh/config',
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  path   => '/home/your_username/.ssh/config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}
