# Worksome Homebrew Tap

[![Software License][ico-license]](LICENSE.md)
[![Repo Size][ico-github-repo-size]][link-github-repo]

A custom cask collection for [Homebrew][link-homebrew].

# Install

Via Homebrew

```shell
# For all casks
$ brew tap worksome/tap

# For a single cask
$ brew install --cask worksome/tap/[package]
```

## Available Formulae

- [Graphlint](https://github.com/worksome/graphlint) ([source](./Formula/graphlint.rb))

## Updates

Casks and formulae in this tap are periodically checked for updates, and updates are applied manually.

To check for new updates for any of the casks or formulae, run the following command:

```shell
brew livecheck --tap worksome/tap
```

If an update is available, you can open a pull request using the `brew bump-formula-pr` command.

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
[ico-github-repo-size]: https://img.shields.io/github/repo-size/worksome/homebrew-tap?style=flat-square

[link-github-repo]: https://github.com/worksome/tap
[link-homebrew]: https://brew.sh
