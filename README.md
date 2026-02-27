# Bruno's Development machine setup

NOTE: This repo is intended to be used as a source for the [yadm](https://yadm.io/) commands.

## Step 1 - Install Homebrew

Follow the instructions on the [Homebrew](https://brew.sh/) home page.  At the time of writing, the command is:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Step 2 - Install yadm using Homebrew

```bash
brew install yadm
```

## Step 3 - Install the configuration files

This requires that you can access this repo.  Make sure you have installed your ssh keys.

Then use yadm to install the configuration files:

```bash
yadm clone git@github.com:brunogodbout/devsetup.git
yadm status
```

## Step 3 - Install software using Homebrew bundle

This will install most of the software required for development.  You should be able to ignore most of the messages regarding updating the dotfiles as this has already been done and saved in the dotfiles in this repo.

```bash
brew bundle
```
