## git-best-practises

A oh-my-gosh plugin to encourage best git practises. Currently it
encourages you to commit frequently by showing a message on the command
prompt

### setup
- clone this repo under `path/to/custom/plugins`
- add `git-best-practices` plugin in `.zshrc`
- go to your theme file and add `$(git_warn)` at the end of the
  `PS1`. For example for *af-magic* theme we updated PS1 in `af-magic.zsh-theme` to `PS1='$FG[237]${(l.$(afmagic_dashes)..-.)}%{$reset_color%}$(git_warn)`
- don't forget to source your `.zshrc`


### notes

- currently the message is displayed whenever there are some uncommited changes. you can update this condition in `git-best-practices.plugin.zsh` 
- you can update the message under `git-best-practices.plugin.zsh` file


