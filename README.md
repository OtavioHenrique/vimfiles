# What is

Everyone has already thought about starting to use vim, but when start looking on web you see a lot of things and confusing tutorials, this repository contains my vim setup and a easy tutorial to follow and start using vim today :) 

## HOW TO USE IT
First of all, you need to install vim in your computer.

## Install vim/gvim

### Linux based systems

I pretty recommend vim-gnome that you can easy install running this:

```sudo apt-get update```

```sudo apt-get install vim-gnome```

But you have many other options like these below: 

* [jvim-canna -](http://packages.ubuntu.com/xenial/jvim-canna)
```sudo apt-get install jvim-canna```

* [vim-athena -](http://packages.ubuntu.com/xenial/vim-athena)
```sudo apt-get install vim-athena```

* [vim-gtk -](http://packages.ubuntu.com/xenial/vim-gtk)
```sudo apt-get install vim-gtk```

* [vim-nox -](http://packages.ubuntu.com/xenial/vim-nox)
```sudo apt-get install vim-nox```

* [vim-tiny -](http://packages.ubuntu.com/xenial/vim-tiny)
```sudo apt-get install vim-tiny```

If you want, you can check the difference between each other [here](https://askubuntu.com/questions/281886/what-are-the-differences-between-the-different-vim-packages-available-in-ubuntu)

### MAC

You can download macvim [here](https://github.com/macvim-dev/macvim)

### Windows

Download vim for windows [here](http://www.vim.org/download.php#pc)

## Installing this vimfiles

All that you need to do is clone this repository into yout home directory either as .vim (linux/mac) or vim files (Windows).

```git clone git@github.com:OtavioHenrique/vimfiles.git```

Now you should create a new .vimrc file in your home directory that
loads the pre-configured one that comes bundled in this package. You can do it
on Linux/Mac like this:

```echo "source ~/.vim/.vimrc" > ~/.vimrc```

On Windows you should create a _vimrc (underline instead of dot) and add
the following line inside:

```source ~/vimfiles/vimrc```

This way you can override the default configuration by adding your own inside
this file.

You should also create a new .gvimrc file in your home directory. You can do
it on Linux/Mac like this:

```echo "source ~/.vim/.vimrc" > ~/.gvimrc```

On Windows you should create a _gvimrc (underline instead of dot) and add
the following line inside:

```source ~/vimfiles/gvimrc```

This way you can override the default GUI configuration by adding your own inside
this file.

And after this, you may run the following line, to start git submodules (Plugins):

```git submodule update --init --recursive```

## Plugins

I recommend that you enter in each repository and read the documentation to learn more about how to use it :)

* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [grep.vim](https://github.com/vim-scripts/grep.vim)
* [haskell-vim](https://github.com/neovimhaskell/haskell-vim)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [vimcapybara](https://github.com/asux/vim-capybara.git)
* [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)
* [vim-go](https://github.com/fatih/vim-go.git)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [vim-rails](https://github.com/tpope/vim-rails)
* [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* [python-mode](https://github.com/python-mode/python-mode)
* [vim-json](https://github.com/leshill/vim-json)
* [html5.vim](https://github.com/othree/html5.vim)
* [vim-preview](https://github.com/greyblake/vim-preview)
* [ack.vim](https://github.com/mileszs/ack.vim/tree/master)
* [vim-endwise](https://github.com/tpope/vim-endwise)
* [syntastic](https://github.com/vim-syntastic/syntastic)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim)
* [vim-autoclose](https://github.com/Townk/vim-autoclose)
* [vim-css-color](https://github.com/ap/vim-css-color)
* [vim-polyglot](https://github.com/sheerun/vim-polyglot)

## Contact

[Follow me on Twitter](https://twitter.com/ValadaresOtavio)

## Credits 

Fabio Akita with the original/complete repository of this project - https://github.com/akitaonrails/vimfiles
