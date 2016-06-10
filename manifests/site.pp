node 'hyeyoung'{
#  include sys_info
}

nod 'vm01.linuxmaster.com' {
  file {'/tmp/testserver/:
    content => "This is a test server.\n",
  }
  include sshd
}

nod /^vm[0-9]+\.linuxmaster\.com$/ {
  include sshd
}

file {'/tmp/HelloPuppetMaster':
	content => "Hello, puppet master!\n",
}
