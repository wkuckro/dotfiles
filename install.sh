#!/bin/sh

#Going to install some critical components needed to run the rest of the scripts.


#Install Node Version Manager
echo -e "\n\nInstalling Node (from nvm)"
echo "=============================="

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
