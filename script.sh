USER=moelkama

adduser $USER
usermod -aG sudo $USER
nano /etc/sudoers
### apt updata upgrade
apt update
apt upgrade
### install zsh
apt install zsh -y

### install curl
apt install curl -y

### install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb -y
### install git
apt install git -y

### isntall make
apt install make -y

### install vscode
wget -O code_latest_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
dpkg -i code_latest_amd64.deb
apt-get install -f

        ### install vscode extensions
        code --install-extension ms-azuretools.vscode-docker
        code --install-extension ms-vscode.cpptools
        code --install-extension bradlc.vscode-tailwindcss
        code --install-extension formulahendry.code-runner
        code --install-extension github.copilot
        code --install-extension github.copilot-chat
        code --install-extension ms-python.debugpy
        code --install-extension ms-python.python
        code --install-extension ms-python.vscode-pylance
        code --install-extension ms-vscode.makefile-tools
        code --install-extension ritwickdey.liveserver
        code --install-extension formulahendry.auto-close-tag
        code --install-extension formulahendry.auto-rename-tag
        code --install-extension ecmel.vscode-html-css
        code --install-extension naumovs.color-highlight
        code --install-extension eamodio.gitlens
        code --install-extension christian-kohler.path-intellisense
        code --install-extension CoenraadS.bracket-pair-colorizer
        code --install-extension Zignd.html-css-class-completion







### install Docker
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" -y
sudo apt install docker-ce
sudo systemctl start docker
sudo systemctl enable docker

### install Docker-compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker $USER
