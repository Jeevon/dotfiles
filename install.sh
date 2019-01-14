echo "updating..."
apt update
echo "upgrading..."
apt upgrade -y

echo "zsh install"
apt install zsh -y
echo "oh-my-zsh install"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo ./zsh/.zshrc >> ~/.zshrc

# vim setup
echo "vim setup"
mkdir -p ./vim/.vim/bundle
ln -s cp vim/.vim ~/.vim
ln -s vim/.vimrc ~/.vimrc

# vim packages
echo "installing vim packages..."
cd ./vim/.vim/bundle
for i in $(cat ../../packages.txt); do
    git clone $i 
done

# install powerline fonts 
echo "powerline fonts install"
apt install fonts-powerline -y

chsh -s $(which zsh)
gnome-session-quit


