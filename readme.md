# Dotfiles

Personal dotfiles repository. Uses the absolutely fabulous https://www.chezmoi.io/

# Usage

## Set up a new machine with a single command
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Nebulea-dev`


## Complete installation of chezmoi (recommended)
* Installation of chezmoi : `sh -c "$(curl -fsLS get.chezmoi.io)"`
* Add `~/bin/` to `$PATH` if not already done.
* Init dotfiles : `chezmoi init https://github.com/Nebulea-dev/dotfiles.git`
* See differences between current dotfiles and github dotfiles : `chezmoi diff`
* Apply changes : `chezmoi apply -v`

## Modify dotfiles
* Go to dotfiles folder : `chezmoi cd`
* Modify files as your heart desires
* Commit and push your changes

## Add/Update dotfiles
* Add a file or folder to the chezmoi dotfiles folder : `chezmoi add <file>`

# Packages to install (TODO : install with chezmoi run_once_)

- ZSH + Oh-My-ZSH + Antigen
- Starship + Hack Nerd font
- Tmux
- Nvim
- Bat + Exa
