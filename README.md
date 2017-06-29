loudoguno/dotfiles
======
Lou's configuration resources, a work in progress...

Installation
------
* Install git

`Git`
* clone directory to local folder and run bootstrap.sh to sync repo, copy files to /~
'$ git clone https://github.com/s10wen/dotfiles.git && cd dotfiles && source bootstrap.sh'

move .extra
Homebrew
In progress.. Working on a bootstrap file.


File Structure Overview
------

**configs** - contains configuration files for engines like karabiner, btt, and slte

* **slate** - .slate file to be included in home directory

* **btt.json** - BetterTouchTool settings export

* **karabiner.xml**

**makesymlinks.sh**

**macos** - script for initializing Mac OSX settings

**images** - any images needed upon initializing a new maching

**references ** - contains various files for references

**Brewfile**

**bootstrap.sh**
syncs local repo and the one on GitHub
copies files to home folder, overridding any existing files
sourcring ~/.bash_profile will apply new settings to terminal w/o restart

**.bash_profile**
**.bashrc**
file loaded by bash that loads in *path*, *bash_prompts*

**.path**
This file speeds up the process of running executable files. 
Rather than having to cd back and forth across various paths to executable files, you can set the file paths in your .path dotilfe and then run executable files directly.


**bash_prompt**
customizes color scheme of bash prompt

exports
aliases
functions
extra
gitconfig
gitignore
gvimrc
hgignore
hushlogin
inputrc
osx
screenrc
vimrc
install-deps

**extra** - must be moved to home directory
GIT_AUTHOR_NAME="Simon Owen"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="s1000wen@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"


