echo "install npm"

npm install -g

echo "update npm"

npm install npm@latest -g

echo "confirm install"

npm -v

echo "The script clones the nvm repository to ~/.nvm and adds the source line to your profile (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

echo "confirm install"

command -v nvm

echo "clone nodejs setup 8.X and install"

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "install build tools"

sudo apt-get install -y build-essential

echo "confirm install"

nodejs -v
