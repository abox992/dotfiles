# Personal Terminal Config

Writing this down so I don't forget the issues I ran into...

## Setup

Install [oh-my-posh](https://ohmyposh.dev/docs)

```bash
curl -s https://ohmyposh.dev/install.sh | bash -s
```

Add the following to **the bottom** of `~/.profile`:

```bash
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/zash.omp.json)"
```

*Note: config location is arbitrary, path is to wherever you put it.*

Once added, reload your profile for the changes to take effect:

```bash
. ~/.profile
```


## Nerd-Font

[CaskaydiaMono](https://www.nerdfonts.com/font-downloads)

Install a nerd-font so you get access to icons. 
Install this on windows and then select it in the terminal profile appearance settings.

## Windows Terminal Color Theme

In the `profile.json` settings file for Windows Terminal, find the `schemes` section and add the theme colors to the list:

```json
{
    "name": "Material Palenight",
    "background": "#292d3e",
    "foreground": "#a6accd",
    "black": "#000000",
    "blue": "#82aaff",
    "brightBlack": "#676e95",
    "brightBlue": "#82aaff",
    "brightCyan": "#89ddff",
    "brightGreen": "#c3e88d",
    "brightPurple": "#c792ea",
    "brightRed": "#f07178",
    "brightWhite": "#ffffff",
    "brightYellow": "#ffcb6b",
    "cyan": "#89ddff",
    "green": "#c3e88d",
    "purple": "#c792ea",
    "red": "#f07178",
    "white": "#ffffff",
    "yellow": "#ffcb6b"
}
```

[Original repo](https://github.com/julianlatest/material-windows-terminal)


