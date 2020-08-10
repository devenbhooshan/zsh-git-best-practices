## zsh-git-best-practices

A zsh prompt to encourage best practises of git. Currently it
encourages you to commit frequently by showing a message on the command
prompt when it sees any uncommited changes. [Here](https://devenbhooshan.wordpress.com/2020/08/08/why-should-i-commit-frequently/) is the blog post explaining why commiting frequenty is important. 

See the image below – the plugin is showing `Don’t forget to commit frequently` in the command prompt in red color.

![](https://raw.githubusercontent.com/devenbhooshan/zsh-git-best-practises/master/Screenshot%202020-08-09%20at%203.04.02%20AM.png)

### setup
- clone this repo under `$ZSH/custom/plugins`
- add `zsh-git-best-practices` plugin in `.zshrc`
- go to your theme file and add `$(git_warn)` at the end of the
  `PS1`. For example for *af-magic* theme we updated PS1 in `af-magic.zsh-theme` to `PS1='$FG[237]${(l.$(afmagic_dashes)..-.)}%{$reset_color%}$(git_warn)`
- don't forget to source your `.zshrc`

### notes

- currently the message is displayed whenever there are some uncommited changes. you can update this condition in `git-best-practices.plugin.zsh` 
- you can update the message to be displayed under `git-best-practices.plugin.zsh` file


### credits
- https://github.com/olivierverdier/zsh-git-prompt
