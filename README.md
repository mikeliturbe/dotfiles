# Dotfiles
Personal dotfiles for different applications in Unix-type OSs. The repository is designed to work using [GNU Stow](https://www.gnu.org/software/stow/).

Zsh dotfiles have been used to work with [Prezto](https://github.com/sorin-ionescu/prezto).

## Requirements
* [GNU Stow](https://www.gnu.org/software/stow/)

## Setup
Clone the repository
    `git clone git://github.com/mikeliturbe/dotfiles.git`
Run stow from the dotfiles directory to create symbolic links to them in the parent directory. For example, with tmux: 
    `stow tmux`
With the -t option, you can set an specific target directory
    `stow -t ~ tmux`

### Zsh
1. Install Zsh
2. Launch Zsh
    `zsh`
3. Clone the Prezto repository
    `git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"`
4. Set Zsh as default shell
    `chsh -s /bin/zsh`
5. Run stow in the dotfile directory:
    `stow -t ~ zsh`

### Vim
1. Install Vim
2. Run viminstall.sh
3. Run stow in the dotfile directory:
    `stow -t ~ vim`

## In a (fast) glance
* [Zenburn](http://kippura.org/zenburnpage/) color theme for Vim and Xfce4-Terminal
Tcsh
* Implicit `cd`
* Some aliases
Tmux
* `C-s` prefix
* Plays nice with Vim splits when switching windows
Vim
* Disabled arrows
* [Sensible buffer settings](https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/)
* `jj` to return to normal mode
* Set `<space>` as Leader
* Some plugins ([complete plugin list](https://github.com/mikeliturbe/dotfiles/blob/master/vim/.vim/plugins.vim))
  * NerdCommenter
  * Syntastic
  * Tabular
  * Vim-LaTeX
  * YouCompleteMe
Zsh
* Vi-mode bindings
* `jj` to return to normal mode
* History substring search

## Copyright and License
Some files in this repository include their own copyright and license headers. Anything else included in this repository is released under the terms specified in the [`LICENSE`](https://github.com/mikeliturbe/dotfiles/blob/master/LICENSE) file.


