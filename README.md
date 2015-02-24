== RIS Containers ==

Provides docker containers that can be used to run your web application cucumber tests.

rvm-base contains the script to build a generic image that has RVM and Firefox that will
talk to a fake X display

webapp contains the script for building the test box. You need to clone or copy your source
code to webapp/source (symlinking won't work).

the webapp container can be given /test or /start as commands (see cucumber.sh and server.sh)

In order to stop the container run `docker ps` to find the name (last column) of your image
and then `docker kill <name>`

== How to ==

1. Install Docker https://github.com/boot2docker/osx-installer/releases/tag/v1.4.1  (instructions that link to that page if you need them https://docs.docker.com/installation/mac/)
2. Run the boot2docker app (should open  terminal window)
3. Clone this code from stash ssh://git@git.its.uiowa.edu:7999/~cortman/ris-containers.git
4. cd to where you cloned ris-containers
5. ./build.sh
6. ./cucumber.sh
