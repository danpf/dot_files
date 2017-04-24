
# for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
# PS1='%F{245}%2m %F{130}%~ %F{215}%# %f'
PROMPT='%(?,%F{034} %f,%F{009} %f'
RPROMPT='%F{008}%d%f'
# PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
