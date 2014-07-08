local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local date='%{$terminfo[bold]$fg[red]%}❮%{$reset_color%}%{$fg[red]%}%D %*%{$reset_color%}%{$terminfo[bold]$fg[red]%}❯%{$reset_color%}'
local user_host='%{$terminfo[bold]$fg[blue]%}❮%{$reset_color%}%{$fg[blue]%}%n%{$terminfo[bold]$fg[blue]%}＠%{$reset_color%}%{$fg[blue]%}%m%{$reset_color%}%{$terminfo[bold]$fg[blue]%}❯%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[green]%}❮%{$reset_color%}%{$fg[green]%}%~%{$reset_color%}%{$terminfo[bold]$fg[green]%}❯%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="%{$terminfo[bold]$fg[black]%}┎──────%{$reset_color%} ${date} ${user_host} ${current_dir} ${git_branch}
%{$terminfo[bold]$fg[black]%}┖───%{$reset_color%}%{$terminfo[bold]$fg[white]%} ♨ %{$reset_color%} "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$fg[magenta]%}❮%{$reset_color%}%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$terminfo[bold]$fg[magenta]%}❯%{$reset_color%}%{$reset_color%}"
