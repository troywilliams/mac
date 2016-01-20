# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
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

# Save and reload the history after each command finishes.
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
