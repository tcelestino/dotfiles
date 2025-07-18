# dotfiles

This is my dotfiles for personal app configs and customizations. I mainly use zsh, but you might adapt for bash or other shells.
This repo is 100% open for you to explore and customize. Just clone it and swap my configs with yours - makes it super easy to get your dev environment up and running on any new machine.

## How to use

1. Clone this repository:

```bash
git clone git@github.com:tcelestino/dotfiles.git
```

2. Edit `.zshrc` file and set config options for variables `USER_NAME`, `USER_EMAIL` and `NPM_SCOPE`. You might set `GH_TOKEN` and `NPM_TOKEN` too.

3. Run the install script

```bash
./install
```
⚠️ **Don't forget to set values `GH_TOKEN` and `NPM_TOKEN`!!**

## My Apps

This is my list of apps and tools that I use.

### Apps

| Name         | Description                                                    | Download URL                                              |
|--------------|-------------------------------------------------------------|---------------------------------------------------------------|
| Terminator   | Multi-monitor terminal for Linux                           | [https://gnometerminator.blogspot.com/p/introduction.html](https://gnometerminator.blogspot.com/p/introduction.html) |
| Ulauncher   | Spotlight for Linux                                        | [https://ulauncher.io/](https://ulauncher.io/) |
| VSCode   | Code editor                                        | [https://code.visualstudio.com/](https://code.visualstudio.com/) |
| Cursor   | AI-powered code editor                                        | [https://www.cursor.com/](https://www.cursor.com/) |
| Firefox  | Web browser                                        | [https://www.firefox.com/](https://www.firefox.com/) |
| Beekeeper Studio | Database management tool                                        | [https://www.beekeeperstudio.io/](https://www.beekeeperstudio.io/) |

### Development tools

| Name         | Description                                                    | Download URL                                              |
|--------------|-------------------------------------------------------------|-----------------------------------------------------------------|
| Node.js      | JavaScript runtime for application development        | [https://nodejs.org/](https://nodejs.org/)                    |
| Yarn         | Fast and reliable package manager for Node.js       | [https://yarnpkg.com/](https://yarnpkg.com/)                  |
| Git          | Distributed version control system                    | [https://git-scm.com/](https://git-scm.com/)                  |

### NPM packages

| Name         | Description                                                    | Download URL                                              |
|--------------|-------------------------------------------------------------|---------------------------------------------------------------|
| fastify-cli  | CLI for Fastify framework                                 | [https://www.fastify.io/](https://www.fastify.io/) |
| npm-check-updates | Tool to update npm dependencies              | [https://www.npmjs.com/package/npm-check-updates](https://www.npmjs.com/package/npm-check-updates) |
| git-cz       | Tool for conventional commits                        | [https://www.npmjs.com/package/git-cz](https://www.npmjs.com/package/git-cz)                       |

## Additional Configurations

- To set the keyboard layout to include the 'ç' character on Ubuntu, follow the steps in the article "[Fixing the wrong cedilla (ć) in Ubuntu Linux](https://www.danielkossmann.com/pt/ajeitando-cedilha-errado-ubuntu-linux/)"

## Contributing

If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request. I'm always looking for ways to improve my configurations and make them more efficient and user-friendly. Read the [CONTRIBUTING.md](CONTRIBUTING.md) for more information.

This project follows the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification. Please use it when making changes to the codebase.

## License
See in [LICENSE](LICENSE).
