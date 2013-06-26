# FreeAgent puts the powerline style in zsh !

#Two-line version modified by brucehsu
#Some code borrowed from Phil's Prompt and bira theme
#http://aperiodic.net/phil/prompt/

# Dim version modified by Howar31

# Color settings
DIM_DIR_BG=251
DIM_DIR_FG=black
DIM_GIT_BG=245
DIM_GIT_FG=black
DIM_RUBY_BG=239
DIM_RUBY_FG=black
DIM_FILL_BG=233
DIM_FILL_FG=white
DIM_TIME_BG=239
DIM_TIME_FG=251
DIM_DATE_BG=245
DIM_DATE_FG=233
DIM_USER_BG=white
DIM_USER_FG=blue
DIM_HOST_BG=233
DIM_HOST_FG=239

GIT_DIRTY_COLOR=%F{124}
GIT_CLEAN_COLOR=%F{118}
GIT_PROMPT_INFO=%F{012}

ZSH_THEME_GIT_PROMPT_PREFIX=" \u2b60 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$GIT_PROMPT_INFO"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✘ "
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✔ "

ZSH_THEME_GIT_PROMPT_ADDED="%F{082}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{166}✹%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{160}✖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{220]➜%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{082]═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{190]✭%f"


function get_git_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return 0
    ref=${ref#refs/heads/}
    echo "$ref       "
}

function get_zsh_pwd() {
    path=`echo $PWD | awk -F/ '{print $NF}'`
    if [ "$PWD" = "$HOME" ]; then
	path='~'
    fi
    echo $path
    #echo "${PWD/$HOME/~}"
}

# ruby features are disabled in this theme. To re-enable them, simply remove the "#" in this function.
function get_rbenv_version() {
    #rb_ver=`rbenv version | awk '{print $1}'`
    #echo $rb_ver
}

# prompt outline:
# [info.dir]>[info.git]>[info.ruby]>[fill]<[time]<[date]
# [user]>[host]>

local pl_static_len=34

local pl_dir="%K{$DIM_DIR_BG}%F{$DIM_DIR_FG} %1~ %k%F{$DIM_DIR_BG}%K{$DIM_GIT_BG}"$'\u2b80'"%f%k"

local pl_git_branch="%K{$DIM_GIT_BG}%F{$DIM_GIT_FG}"$'`git_prompt_info`'" %k%f%F{$DIM_GIT_BG}%K{$DIM_RUBY_BG}"$'\u2b80'" %f%k"

local pl_rvm_info='%K{$DIM_RUBY_BG}%F{$DIM_RUBY_FG} $(rvm-prompt i v g)'" %k%f""%F{$DIM_RUBY_BG}%K{$DIM_FILL_BG}"$'\u2b80'%f
local pl_rbenv_info='%K{$DIM_RUBY_BG}%F{$DIM_RUBY_FG}$(get_rbenv_version)'" %k%f""%F{$DIM_RUBY_BG}%K{$DIM_FILL_BG}"$'\u2b80'%f

local pl_info="${pl_dir}${pl_git_branch}${pl_rbenv_info}"
local pl_fill='${(l.((${COLUMNS}+2-${#$(get_git_branch)}-${#$(get_zsh_pwd)}-${#$(get_rbenv_version)}-$pl_static_len))...)}'
local pl_time='%F{$DIM_TIME_BG}'$'\u2b82'"%f%K{$DIM_TIME_BG} %F{$DIM_TIME_FG}%D{%H:%M:%S} %F{$DIM_DATE_BG}"$'\u2b82'"%f%k%K{$DIM_DATE_BG}%F{$DIM_DATE_FG} %D{%Y-%m-%d} %f%k"

local pl_user="%K{$DIM_USER_BG}%F{$DIM_USER_FG} %n %f%k%F{$DIM_USER_BG}%K{$DIM_HOST_BG}"$'\u2b80'"%f%k"
local pl_host="%K{$DIM_HOST_BG}%F{$DIM_HOST_FG} @%m %k%f%F{$DIM_HOST_BG}"$'\u2b80'"%f%k"


PROMPT="
${pl_info}${pl_fill}${pl_time}
${pl_user}${pl_host} "
