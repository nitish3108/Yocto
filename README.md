# new update
# Yocto

# Date: 24/11/2023 
This repository will give you the basic details regarding the Yocto basic recipe setup custom environment and other related reference
The information will be updated time to time

We need to setup the environment You can follow the following command
$ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python3-subunit mesa-common-dev zstd liblz4-tool file locales libacl1
$ sudo locale-gen en_US.UTF-8

Build command
  Enter into the poky directory and follow following command:
    * cd poky
    * git branch -a
    * export PSEUDO_DISABLED=1
    * git pull

  Build 
    * source oe-init-build-env 
      If you get the following instruction you are good else need to resolve the dependency.
    <img width="406" alt="image" src="https://github.com/nitish3108/Yocto/assets/98373896/31f4b87d-400a-4688-a7c2-a86f4308a2d6">
    
      * bitbake core-image-sato
  # Once you are successfully able to build the yocto container you can run to test the image
      * runqemu qemux86-64

  We can change the machine based on our requirement

# Date: 03/01/2023
Adding further steps to add this repo to build from Jenkins and implement CICD