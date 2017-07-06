#!/usr/bin/env bash


# dirname returns directory name sans trailing "/" and "." characters
# BASH_SOURCE_is an array variable whose members are the source filenames for corresponding shell functions in FUNGNAME
# can use BASH_SOURCE[0] to get path of current script
# overall this line simple moves the shell session to the locatiionof the bootstrap file

cd "$(dirname "${BASH_SOURCE}")"; # I think this just gets your home folder or wherever your binarie reside

# To prevent accidental running of script and subsequent overwriting of files
exit 1


git pull origin master; # syncs 

#overwrite existing files in home directory
function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.bash_profile; # applies new settings to open terminal windows
}

# bypasses confirmation if --force flag is used
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;

# unset frees up vallues and attributes used by a shell function
unset doIt;