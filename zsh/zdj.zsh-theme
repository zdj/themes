local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local date='%{$fg[white]%}❮%{$reset_color%}%{$fg[red]%}%D %*%{$reset_color%}%{$fg[white]%}❯%{$reset_color%}'
local user_host='%{$fg[white]%}❮%{$reset_color%}%{$fg[blue]%}%n%{$fg[white]%}＠%{$reset_color%}%{$fg[blue]%}%m%{$reset_color%}%{$fg[white]%}❯%{$reset_color%}'
local current_dir='%{$fg[white]%}❮%{$reset_color%}%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%}❯%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="%{$fg[yellow]%}┌────%{$reset_color%} ${date} ${user_host} ${current_dir} ${git_branch}
%{$fg[yellow]%}└────%{$reset_color%} ☕  "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$fg[magenta]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

