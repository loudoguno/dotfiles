loudoguno/dotfiles
======
Lou's configuration resources, a work in progress...


FILES
------

**bootstrap.sh**
This gets run first and perforsm the following
syncs local repo and the one on GitHub
copies files to home folder, overridding any existing files
sourceing ~/.bash_profile will apply new settings to terminal w/o restart
doIt function is invoked when overwrite confirmation is given

**macos** - script for initializing Mac OSX settings

**images** - any images needed upon initializing a new maching

**references ** - contains various files for references

**Brewfile**



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

**configs** - contains configuration files for engines like karabiner, btt, and slte

* **slate** - .slate file to be included in home directory

* **btt.json** - BetterTouchTool settings export

* **karabiner.xml**

**makesymlinks.sh**

**extra** - must be moved to home directory
GIT_AUTHOR_NAME="Simon Owen"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="s1000wen@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"



INSTALLATION
------
* Install git

`git`

* clone directory to local folder and run bootstrap.sh to sync repo, copy files to /~

`$ git clone https://github.com/s10wen/dotfiles.git` 



`source bootstrap.sh`

* move .extra

* Install Homebrew

`$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
	* set up homebrew

`bash brew.sh`

* set up Rupa Z, Jekyll, and sublime text symlink with **install_deps**

* osx

`bash .osx`





















