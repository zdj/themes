local return_code="%(?..%{$fg[white]%}%? ↵%{$reset_color%})"

local current_dir='%{$reset_color%}%{$fg_no_bold[white]%}%~'
local user_host='%{$reset_color%}%{%K{black}$fg_bold[yellow]%}%n＠%m%k%{$reset_color%}'
local date='%{$reset_color%}%{$fg_bold[magenta]%}%{$reset_color%}%W %{%K{black}$fg_bold[red]%}%@%k%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
${user_host}  ${date}
%{$reset_color%}${current_dir}%{$reset_color%}%{$fg_bold[yellow]%} > %{$reset_color%}"
RPS1="${return_code}"

RPROMPT="${git_branch}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
