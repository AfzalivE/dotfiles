PROMPT='
%{$fg[cyan]%}$(get_username): %{$fg[yellow]%}$(get_pwd)$(put_spacing)$(git_prompt_info)
%{$reset_color%}➜ '

function get_pwd() {
  echo "${PWD/$HOME/~}"
}

function get_username() {
	echo "%n at %m"
}

function put_spacing() {
	local git=$(git_prompt_info)
	if [ ${#git} != 0 ]; then
	    ((git=${#git} - 10))
	else
	    git=0
	fi

	local prefix=$(whoami)
	((prefix=${#prefix} + 4 + ${#HOST}))

	local termwidth
	(( termwidth = ${COLUMNS} - 3 - ${prefix} - ${#$(get_pwd)} - ${git} ))

	local spacing=""
	for i in {1..$termwidth}; do
	    spacing="${spacing} "
	done
	echo $spacing
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"