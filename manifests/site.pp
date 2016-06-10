node 'hyeyoung'{
#  include sys_info
}

nod 'vm01.linuxmaster.com' {
  include sshd
  include vim_upgrade
}

nod /^vm[0-9]+\.linuxmaster\.com$/ {
  include sshd
}

file {'/tmp/HelloPuppetMaster':
	content => "Hello, puppet master!\n",
}
