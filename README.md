# Salt minion Packer template

This packer based repositories produce ubuntu based amis containing 

* salt-minion

packages

## Building template
1. Requires [AWS cli](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) to be installed
2. Configure your AWS account by running ```aws configure```
3. Requires one of the following packer installations
  * [Binary](https://www.packer.io/intro/getting-started/install.html)
  * [Docker image](https://hub.docker.com/r/hashicorp/packer)
4. To build the template (ubuntu currently)
  ``` shell
  packer build aws/ubuntu.json
  ```
This will produce a new ami, after the build process is finished that will have the name ```salt-minion-TIMESTAMP``` where `TIMESTAMP` will be replaced with the value of the timestamp at the moment the AMI was generated

This repository contains a .drone.yml file that allows builds to be started in a drone.io server