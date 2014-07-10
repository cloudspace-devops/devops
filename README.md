Vagrant-based Virtualbox setup building packer images, go files, and docker containers.


## Usage

Be sure to install Virtualbox and Vagrant before you begin.  If you haven't setup your machine for development, you can use our setup script for OSX at https://github.com/cloudspace-devops/dev-machine-setup

1. Clone this repo into a folder inside your workspace: `git clone git@github.com:cloudspace-devops/devops.git`
2. If you are going to be doing packer or go development, run the following in the root of your workspace directory:
 - `git clone git@github.com:cloudspace-devops/packer-image-scripts.git`
 - `git clone git@github.com:cloudspace-devops/packer-shell-scripts.git`
 - `mkdir go; mkdir go/bin; mkdir go/pkg; mkdir go/src; mkdir go/src/github.com;`
3. If you are using a workspace other than /srv, update the $workspace variable inside the Vagrantfile to match your workspace location.
4. Start the virtual machine by running `vagrant up` in the root of the project.
5. SSH into your virtual machine by running `vagrant ssh`, also in the root of the project.

To test your development environment, do the following:

1. Get a test project: `go get github.com/cloudspace/microservice-url-lengthener-go`
2. Change directory into the project: `cd /srv/go/src/github.com/cloudspace/microservice-url-lengthener-go/`
3. Remove the old lengthener binary: `rm lengthener`
4. Build the go file without any dependencies: `CGO_ENABLED=0 go build -a -ldflags '-s' lengthener.go`
5. Verify the binary is completely static (should show “not a dynamic executable”): `ldd lengthener`
6. Build a a Docker image to run your binary: `docker build -t cloudspace/url-lengthener .`
7. Test the Docker image you created:  `docker run -ti cloudspace/url-lengthener http://tinyurl.com/testurl`

If all went well, this should return the lengthened url for the short url you passed in.
