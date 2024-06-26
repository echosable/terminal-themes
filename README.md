# Bashrc/zshrc Theme Configuration
<p>
This repository contains a stylish and functional `.bashrc` configuration. It features a colorful prompt that includes the current time, username, and supports bash completion.
</p>

**note: before installation you need backup your original configuration file** 

1. **backup the origin config file** 
```zsh
cat  ~/.bashrc > ~/bashrc.backup
```
2. backup the origin config file
```zsh
cat  ~/.zshrc > ~/zshrc.backup
```
## Features
- **Time Display**: Shows the current time in the prompt.
- **Username Display**: Shows the current user's username.
- **Bash Completion**: Provides autocomplete functionality for commands, file names, and more.
- **Colorful Prompt**: A visually appealing and informative prompt with multiple colors.
- **auto-suggestions**
- **history file**
- **find command**
- etc..

## Preview
![preview](/preview.png)

## Installation
1. **clone the repository**
```bash
==git clone https://github.com/XplDan/template-bashrc-conf.git==
```
2. **Replace the file**
```bash
 ==cd /path/to/directory-template==/
 cp bashrc > ~/.bashrc 
 ```
## Customization
<p>
Feel free to customize the .bashrc file to suit your preferences. You can change the colors, add more information to the prompt, or include additional functionalities. No need to worry, there are several color templates available that have already been made.
</p>

## example color
The colors in the prompt are defined using ANSI escape codes. Here are some common codes you can use:

# Regular Colors
| Color  | Code          | Description |
|--------|---------------|-------------|
| Black  | `\033[0;30m`  | Black       |
| Red    | `\033[0;31m`  | Red         |
| Green  | `\033[0;32m`  | Green       |
| Yellow | `\033[0;33m`  | Yellow      |
| Blue   | `\033[0;34m`  | Blue        |
| Purple | `\033[0;35m`  | Purple      |
| Cyan   | `\033[0;36m`  | Cyan        |
| White  | `\033[0;37m`  | White       |

you can see template color [stackoverflow](https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux)

## Contributing
<p>
If you have suggestions or improvements, feel free to create an issue or submit a pull request.
</p>

**Enjoy your new, colorful bash prompt!**

## dependence 
1. before your installation you need install the file depence.txt
	1. pacman
```zsh
pacman -Syyu - < depence.txt
```