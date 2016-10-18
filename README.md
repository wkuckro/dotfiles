# dotfiles

####Keeping everything intact across all machines

## Installation

1. Start in the directory you'd like to be _above_ where these files live. This will install a folder called `dotfiles`, with the subsequent files and folders below it. So, if you want to install this in your user directory /User/dotfiles, you can stay where you are in a default prompt.

```bash
git clone https://github.com/wkuckro/dotfiles.git && cd ./dotfiles
```

2. Run the script to make links and back up new existing files.

```bash
chmod +x makesymlinks.sh && ./makesymlinks.sh
```

3. Run the install script to set up github and get first steps done
```bash
chmod +x install.sh && ./install.sh
```

4. Run the brew installation to install it and common brew items.

```bash
chmod +x brew.sh && ./brew.sh
```

5. Run the macOS install file to update preferences on macOS

```bash
chmod +x osx.sh
./brew.sh
```
## Use


## Acknowledgements
I would not have been able to do this without such great starters.
-https://github.com/cowboy/dotfiles
-https://github.com/michaeljsmalley/dotfiles
-https://github.com/mathiasbynens/dotfiles
-https://github.com/webpro/dotfiles/
-https://github.com/nicknisi/dotfiles
-https://github.com/atomantic/dotfiles/
-https://github.com/kevinSuttle/MacOS-Defaults

## ToDo:

* Automate install of XCode command line tools
