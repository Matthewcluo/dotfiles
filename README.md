# My dotfiles

## Current configs

- .zshrc: my zsh shell configuration with aliases and stuff
    - this includes several plugins
        - zoxide: a smarter cd
        - eza: a nicer ls
        - starship: a cool custom prompt

- wezterm: my terminal emulator configuration
- nvim: configuration for my editor
- yazi: terminal based file explorer/manager
- aerospace: a tiling and workspace manager for better window management

## Setting it all up

1. Install [homebrew](https://brew.sh/)
2. Install [WezTerm](https://wezterm.org/install/macos.html#homebrew)
    - note: Might wanna look into installing a nerdfont but am just currently using [wezterm's default font config](https://wezterm.org/config/fonts.html)
3. `mkdir ~/.dotfiles` 
4. `cd ~/.dotfiles` 
5. `git clone https://github.com/Matthewcluo/dotfiles.git`
6. `mkdir ~/.config`
    - setup all of the directory/file symlinks
    - `ln -sf ~/.dotfiles/... ~/...`
    - NOTE: for starship, it expects `~/.config/starship.toml` but in dotfiles it is at `~/.dotfiles/config/starship/starship.toml`
    - remember `mv ~/.zshrc ~/.zshrc.old` and symlink the one from dotfiles
    - don't source `.zshrc` until after installing all the plugins
7. Install all the plugins
    - [eza](https://github.com/eza-community/eza/blob/main/INSTALL.md#brew-macos)
    - [zoxide](https://github.com/ajeetdsouza/zoxide)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#homebrew)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
    - [yazi](https://yazi-rs.github.io/docs/installation/#homebrew)
        - just install all the dependencies
    - [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#homebrew)
    - [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#using-homebrew)
    - [neofetch](https://github.com/dylanaraps/neofetch/wiki/Installation#macos-homebrew)
    - [fastfetch](https://github.com/fastfetch-cli/fastfetch?tab=readme-ov-file#macos)
    - [starship](https://starship.rs/guide/)
    - [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#homebrew-on-macos-or-linux)
    - think about language managers like pyenv and openjdk
        - either also install them or remove those lines from `.zshrc`
8. `source ~/.zshrc`
    - and then will prob have to fix whatever goes wrong
9. Install [Aerospace](https://nikitabobko.github.io/AeroSpace/guide)
10. Install [tmux](https://github.com/tmux/tmux/wiki/Installing)
    - Remember to symlink correctly; tmux looks at `~/.tmux.conf`
    - clone [tpm](https://github.com/tmux-plugins/tpm?tab=readme-ov-file#installation)
    - see if it works lol
