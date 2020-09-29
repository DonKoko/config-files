# Remove notice from bash for changing  shell to zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

HOST_NAME=donkokoッ
shopt -s cdspell


txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("🧙🏼‍" "🧟" "🗿")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI $ "

fortune | cowsay -s
  
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Paths  added to .bash_profile because bash on OSX doesnt load .bash_rc https://stackoverflow.com/questions/24306398/how-to-add-mongo-commands-to-path-on-mac-osx
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#Path for MYSQL
export PATH=$PATH:/usr/local/mysql/bin

#~Composer alias.
alias composer="php /usr/local/bin/composer.phar"
export PATH="/usr/local/opt/qt/bin:$PATH"

export PATH="$PATH:/usr/local/mongodb/bin"
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
