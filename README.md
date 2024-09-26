# dotvim

.vim directory.

## Download

```bash
$ git clone https://gitlab.com/bogdanvlviv/dotvim.git ~/.vim
$ cd ~/.vim
$ git submodule update --init --recursive
$ git submodule foreach --recursive 'git pull origin master'
$ ln -s bundle/vim-pathogen/autoload/ ./
```
