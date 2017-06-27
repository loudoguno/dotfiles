# /Users/Loudog/.bash_profile contains a list of all the aliases configured to run in the terminal


#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/nano
#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad


[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Show hidden files
alias showdot='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
# Hide hidden files
alias hidedot='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Edit bash_profile in Sublime
alias editBash='sudo sublime ~/.bash_profile'
# Refresh bash_profile
alias reloadBash='source ~/.bash_profile'



# Mockaroo Claim Table
alias getClaimTable='cd ~/Desktop; curl "https://www.mockaroo.com/dabd8c00/download?count=1000&key=14e6b9e0" > "Claim.csv"'
# Mockaroo Person Table
alias getPersonTable='cd ~/Desktop; curl "https://www.mockaroo.com/14b5b5e0/download?count=1000&key=14e6b9e0" > "Person_Insurance.csv"
'
