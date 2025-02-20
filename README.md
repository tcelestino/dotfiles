# Dotfiles

This repository serves as the central hub for my personal configurations, settings, and customizations across various software applications. I primarily use `zsh` as my shell, but you can set up your own configurations for `bash` or any other shell.

I'm used to macOS and Ubuntu, so my configurations are tailored to these operating systems. However, you can easily adapt them to work on other systems as well.

## Usage

Feel free to explore, adapt, and reuse any of my configurations in your own setup. You can clone this repository and replace my configurations with your own, making it easy to set up and maintain your personalized environment on any new system.

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

### Changelog

The CHANGELOG is automatically generated using GitHub Actions and git-cliff when a pull request is merged into the main branch. The process uses conventional commits to categorize changes:

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
