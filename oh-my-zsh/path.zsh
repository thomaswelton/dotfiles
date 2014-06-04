# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="kphoen"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git docker common-aliases git-extras python rand-quote sbt scala screen svn wd tmux)
plugins=(bower colorize brew-cask composer gem git-extras npm osx terminalapp vagrant autojump brew git-flow)

# Load oh-my-zsh (first, so topic.zsh files override this)
if [[ -a $ZSH/oh-my-zsh.sh ]]
then
  source "$ZSH/oh-my-zsh.sh"
else
  echo "Oh-my-zsh not found, downloading"
  git clone https://github.com/robbyrussell/oh-my-zsh.git "$ZSH"
  source "$ZSH/oh-my-zsh.sh"
fi


