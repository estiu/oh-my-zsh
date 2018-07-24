set -e

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  rm -rf ~/.oh-my-zsh
fi

echo "\033[0;34mCloning Oh My Zsh...\033[0m"
hash git >/dev/null 2>&1 && /usr/bin/env git clone https://github.com/vemv/oh-my-zsh.git $ZSH || {
  echo "git not installed"
  exit
}

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`
