# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{path,extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Timestamps for later analysis
# - www.debian-administration.org/users/rossen/weblog/1
#export HISTTIMEFORMAT='%F %T '

# Keep history up to date, across sessions, in realtime.
#  - http://unix.stackexchange.com/a/48113
export HISTCONTROL=ignoredups:erasedups         # No duplicate entries.
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend  # Append to history, don't overwrite it.
shopt -s cmdhist # Save multi-line commands as one command.

# Don't record some commands.
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Save and reload the history after each command finishes.
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Tricking out the prompt.
export PS1="[\u]🚀 \w $ "
