# `sauron`

A simple utility for searching for packages on the AUR.

## Prerequisites

`sauron` requires `python3` and `pip3` to be installed and on the PATH, as well as the `arg` and `aur` Python packages to be installed.

## Installation

Clone this repo and make the script file executable:

```
git clone https://github.com/icorbrey/sauron ~/.sauron
cd ~/.sauron
chmod +x sauron
export PATH="$PATH:/home/<user>/.sauron"
```

It's advisable to add the directory to the PATH in your `.bashrc` or similar shell config file:

```
echo "export PATH=\"\$PATH:/home/<user>/.sauron\"" >> .bashrc
```

## Usage

Search for packages on the AUR:

```
sauron search yaourt
```

View package details:

```
sauron view yaourt
```

The full help message:

```
sauron help
```
