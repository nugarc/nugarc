cd /c/Users/nugar/

#alies
# ls aliases
alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -a"
alias lt="ls -lht"

alias editvrc="vim ~/.vimrc"
alias clr="clear"

alias src="source ~/.bashrc && echo 'sourced your .bashrc file"
alias editbrc="vim ~/.bashrc && source ~/.bashrc && echo 'sourced your .bashrc file"

# for a colored prompt
function color_my_prompt {
  	local __cur_time="\[\033[35m\]\D{%H:%M:%S}"
	local __user_and_host="\[\033[01;32m\]\u@\h"
	local __cur_location="\[\033[01;33m\]\w"
	local __git_branch_color="\[\033[36m\]"
	local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
	local __prompt_tail="\[\033[37m\]\n$"
	local __last_color="\[\033[00m\]"
	export PS1="$__cur_time $__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

