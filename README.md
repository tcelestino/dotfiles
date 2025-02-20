# dotfiles

Hey! 👋

This repo stores my personal app configs and customizations. I mainly use zsh, but you can adapt for bash or other shells.
Since I work with macOS and Ubuntu, configs are optimized for these OSs. But no worries - you can easily tweak them for other systems too!

## Usage

This repo is 100% open for you to explore and customize. Just clone it and swap my configs with yours - makes it super easy to get your dev environment up and running on any new machine.

## Getting Started

1. Clone this repository to your local machine:

```bash
git clone https://github.com/tcelestino/dotfiles.git ~/.dotfiles
```

2. Set run file to install

```bash
cd ~/.dotfiles && chmod +x install
```

3. Install

```bash
./install
```

## Additional Configurations

- To set the keyboard layout to include the 'ç' character on Ubuntu, follow the steps in the article "[Ajeitando o cedilha errado (ć) no Ubuntu Linux](https://www.danielkossmann.com/pt/ajeitando-cedilha-errado-ubuntu-linux/)"
- Import the color scheme and other configurations into iTerm2. The settings can be found in the "iterm2" folder.

## Contributing

If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request. I'm always looking for ways to improve my configurations and make them more efficient and user-friendly. Read the [CONTRIBUTING.md](CONTRIBUTING.md) for more information.

This project follows the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification. Please use it when making changes to the codebase.

- 🚀 Features: `feat: feature description`
- 🐛 Bug Fixes: `fix: bug fix description`
- 📝 Documentation: `docs: description of the change`
- ⚡️ Performance: `perf: description of the improvement`
- ♻️ Refactoring: `refactor: description of the change`
- 🎨 Style: `style: description of the change`
- ✅ Tests: `test: description of the test`
- 📦 Dependencies: `chore(deps): description of the update`
- 🛠 Chores: `chore: description of the task`

For breaking changes, add `!` after the type or include `BREAKING CHANGE:` in the commit body:
```bash
# Using ! after the type
feat!: change that breaks compatibility

# Or using BREAKING CHANGE in the body
feat: change that breaks compatibility

BREAKING CHANGE: detailed description of the breaking change
```
The CHANGELOG.md will be automatically updated after the PR is merged.

## License
See in [LICENSE](LICENSE).
