# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local date='%{$fg[white]%}❮%{$reset_color%}%{$terminfo[bold]$fg[red]%}%D %*%{$reset_color%}%{$fg[white]%}❯%{$reset_color%}'
local user_host='%{$fg[white]%}❮%{$reset_color%}%{$fg[blue]%}%n%{$fg[white]%}＠%{$reset_color%}%{$terminfo[bold]$fg[yellow]%}%m%{$reset_color%}%{$fg[white]%}❯%{$reset_color%}'
local current_dir='%{$fg[white]%}❮%{$reset_color%}%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%}❯%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="%{$fg[yellow]%}╭───────%{$reset_color%} ${date} ${user_host} ${current_dir} ${rvm_ruby} ${git_branch}
%{$fg[yellow]%}╰───►%{$reset_color%} ☕  "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
