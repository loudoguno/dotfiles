loudoguno/dotfiles
======
Lou's configuration resources, a work in progress

To Do...
* work on brew.sh



___
INSTALLATION
------

### 0) Prepare

1. update Mac OSX

1. Install xcode


### 1) Git

1. Install git
	
	`git`

1. Clone online GitHub directory to local folder via https link

	`git clone https://github.com/s10wen/dotfiles.git` 

1. Run **bootstrap.sh** to sync repo, copy files to /~ [bootstrap.sh](https://github.com/loudoguno/dotfiles#bootstrapsh)

	`source bootstrap.sh`

1. Move .extra [extra]()

### 2) Homebrew

1. Install homebrew with curl command and link to Homebrew GitHubrepo
	
	`$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

1. Set up homebrew using brew.sh [link](https://github.com/loudoguno/dotfiles#bootstrapsh)

	`bash brew.sh`

1. 

* set up Rupa Z, Jekyll, and sublime text symlink with **install_deps**

### 4) OSX Preferences

`bash .osx`



___
FILES
------

#### bootstrap.sh
This file gets run first and performs the following...
1. syncs local repo and the one on GitHub
1. copies files to home folder, overridding any existing files but excluding thins like.git and README
1. doIt function is invoked when overwrite confirmation is given
1. sourcing ~/.bash_profile will apply the new bash profile to terminal w/o restart

#### Brewfile (brew.sh)
- updates homebrew and installs usefull utility tools like coreutil, moreutils, findutils...
1. updates homebrew (`brew update`) and all formulas (`brew upgrade --all`)
1. installs core utilities including
	* coreutils
	* moreutils
	* findutils
	* bash 4
	* wget
	* ringojs (Multi-threaded JavaScript on the JVM

)
	* narh
1. 
1.  removes outdated version from the "cellar" `brew cleanup`



#### .bash_profile 
- loaded at new terminal sessions, sometimes **bash.rc** is loaded so bash.rc should contain a call for bash_profile
1. loads
	+ **.path** - speeds up process of running executables removing the need to `cd` between directories
		2. not held in public repo
	+ **.bash_prompt** - customizes Bash prompt appearance and colors
	+ **.exports** - sets environmental variabls including
		1. setting default editor
		2. increases amount of bash command history retained
		3. highlight section titles in man pagues and don't clear the screen after quiting
	+ **.aliases** - contains aliases () for commonly used commands
		* will list better ones here
	+ **.functions** - contains shortcuts likes aliases but can take arguments
	+ **.extra**
1. configures features including
	1. autocompletion
1. makes sure .bash_profile is called if it is loaded
1. exludes DS_Store, macos, bootstrap, README and LICENCE
1. initializes z


#### .gitconfig 
- contains aliases that apply only to git

#### .gitignore 
- prevents files like DS_Store from accidentally being commited

#### .gvimrc 
- small file with configuration that improves the readability for gvim (GUI enabled vim)

#### .hignore 
- ignore folder for mercurial

#### .hushlogin 
- prevents server welcome messages

#### .inputrc 
- configures readline environment which controls the behavior of keys when your entering commands into the shell (eg, make tab autocomplete when regardless of filename case) Emacs like keybindings installed by default

#### .macos or **.osx** 
- script for initializing Mac OSX settings

#### screenrc 
- removes startup message when using `screen`

#### vimrc 
- sets vim configuration like enabling line numbers and adding syntax highlighting

#### wgetrc 
- adds additional settings to wget, a non-interactive GNU package called fro scripts for retrieving files using HTTP, HTTPS and FTP

#### installdeps** 
- installs dependencies including
	* rupa/z
	* jekyll
	* symlinks sublime text

#### images 
- any images needed upon initializing a new maching

#### references 
- contains various files for references



#### configs 
- contains configuration files for engines like karabiner, btt, and slte
	
	* **slate** - .slate file to be included in home directory
	
	* **btt.json** - BetterTouchTool settings export
	
	* **karabiner.xml**



#### extra
	- must be moved to home directory
	`GIT_AUTHOR_NAME="Simon Owen"
	GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
	git config --global user.name "$GIT_AUTHOR_NAME"
	GIT_AUTHOR_EMAIL="username@website.com"
	GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
	git config --global user.email "$GIT_AUTHOR_EMAIL"``

#### makesymlinks.sh






















