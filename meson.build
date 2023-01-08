project('myproject', 'c')

make_command = find_program('make', required: true)
# Create targets for each of the Makefile targets
r = run_command(make_command, 'all', 'phony',  check: true)
output = r.stdout().strip()
errortxt = r.stderr().strip()

#target('all', 'phony')

#target('clean', 'phony')

#target('setup', 'phony')

#target('build_all', 'phony')

#target('build_fiasco', 'phony')

#target('build_l4re', 'phony')

#target('build_l4linux', 'phony')

# Create custom targets for each of the Makefile targets that run the Makefile
# custom_target('all', command: 'make all', build_by_default: true)

# custom_target('clean', command: 'make clean')

# custom_target('setup', command: 'make setup')

# custom_target('build_all', command: 'make build_all')

# custom_target('build_fiasco', command: 'make build_fiasco')

# custom_target('build_l4re', command: 'make build_l4re')

# custom_target('build_l4linux', command: 'make build_l4linux')


# sudo apt update
# sudo apt-install --assume-yes make build-essential
# sudo apt install --assume-yes software-properties-common
# sudo apt-get install --assume-yes python3 python3-pip python3-setuptools python3-wheel ninja-build
# sudo add-apt-repository ppa:deadsnakes/ppa
# sudo apt update
# sudo apt install --assume-yes python3.8
# sudo apt-install --assume-yes meson
# sudo apt install --assume-yes gcc-multilib