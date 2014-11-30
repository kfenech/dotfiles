#!/bin/bash
################################
#.make.sh
#This script creates symlinks from the home directory to any dotfiles
###############################

#variables
dir=~/dotfiles		#dotfiles directory
olddir=~/dotfiles_old	#old dotfiles backup directory
files="bashrc vimrc tmux.conf" #list of files/folders to symlink in home

#create dotfiles_old in homedir
echo -n "Creating $olddir for backup of existing dotfiles"
mkdir -p $olddir
echo "Done"

#change to dotfiles directory
echo -n "Changing to the $dir directory..."
cd $dir
echo "Done"

#move any existing dotfiles in homedir to dotfiles_old
for file in $files; do
	echo "Moving existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old
	echo "Creating symlink to $file in home dir"
	ln -s $dir/$file ~/.$file
done

