default:
	# To use packer, run "make packer-image-scripts", "make packer-shell-scripts", or run "make go" to create the go directories for development with go.
packer-image-scripts:
	git clone git@github.com:cloudspace-devops/packer-image-scripts.git
packer-shell-scripts:
	git clone git@github.com:cloudspace-devops/packer-shell-scripts.git
go:
	mkdir go; mkdir go/bin; mkdir go/pkg; mkdir go/src; mkdir go/src/github.com;
