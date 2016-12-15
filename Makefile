app-all: install copy-profiles enabled disabled enable-profiles disable-profiles complain-mode

install:
	# Install
	ansible-playbook main.yml -i localhost -t apparmor

copy-profiles:
	# Copy apparmor profiles
	ansible-playbook main.yml -i localhost -t apparmor_profiles

enabled:
	# Enable apparmor
	ansible-playbook main.yml -i localhost -t apparmor_enabled

disabled:
	# Disable apparmor
	ansible-playbook main.yml -i localhost -t apparmor_disabled

enable-profiles:
	# Enable apparmor profiles
	ansible-playbook main.yml -i localhost -t apparmor_enable_profiles

disable-profiles:
	# Disable apparmor profiles
	ansible-playbook main.yml -i localhost -t apparmor_disable_profiles

complain-mode:
	# Set apparmor in complain mode
	ansible-playbook main.yml -i localhost -t apparmor_complain_profiles
