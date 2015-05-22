default:
	# To use packer, run "make packer-image-scripts", "make packer-shell-scripts", or run "make go" to create the go directories for development with go.
packer-image-scripts:
	cd srv; sudo git clone git@github.com:cloudspace-devops/packer-image-scripts.git
packer-shell-scripts:
	cd /srv; sudo git clone git@github.com:cloudspace-devops/packer-shell-scripts.git
go:
	cd /srv; sudo mkdir go; sudo mkdir go/bin; sudo mkdir go/pkg; sudo mkdir go/src; sudo mkdir go/src/github.com;
