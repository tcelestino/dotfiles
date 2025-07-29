# dotfiles

This is my dotfiles for personal app configs and customizations. I mainly use zsh, but you might adapt for bash or other shells.

This repo is 100% open for you to explore and customize.

## Requirements

You need to have the following tools installed:

- [Homebrew](https://brew.sh/)
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default)
- [oh-my-zsh](https://ohmyz.sh/#install)
- [git](https://git-scm.com/downloads)

## How to use

1. Install Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Clone this repository and open folder `dotfiles`:

```bash
git clone git@github.com:tcelestino/dotfiles.git && cd dotfiles
```

3. Open `.zshrc` file and change variables `USER_NAME`, `USER_EMAIL` and `NPM_SCOPE`. You might set `GH_TOKEN` and `NPM_TOKEN` too.
4. Set your email and name for git on `.gitconfig` file.

5. Install zsh (if you not have it installed):

```bash
## linux
sudo apt update && sudo apt install zsh
```

```bash
## macos
brew install zsh
```

_zsh is default shell on latest versions of macOS_

6. Install oh-my-zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

7. Run the install script:

```bash
./install --ssh-email <your-email-here>
```

## Apps and dev tools

My apps and dev tools for Linux and macOS.

- [Linux apps](docs/linux-apps.md)
- [macOS apps](docs/macos-apps.md)
- [Dev tools](docs/dev-tools.md)

## Additional Configurations

- To set the keyboard layout to include the 'ç' character on Ubuntu, follow the steps in the article "[Ajeitando o cedilha errado (ć) no Ubuntu Linux](https://www.danielkossmann.com/pt/ajeitando-cedilha-errado-ubuntu-linux/)"

## License

See in [LICENSE](LICENSE).
