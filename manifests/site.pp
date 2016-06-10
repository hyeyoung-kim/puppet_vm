node 'hyeyoung'{
  include sys_info
}

file {'/tmp/HelloPuppetMaster':
	content => "Hello, puppet master!\n",
}
