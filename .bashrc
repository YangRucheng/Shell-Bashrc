############################################################
# Simple but Cute and Helpful (TM) Bash Settings
############################################################

[ -z "$PS1" ] && return

# Distribute bashrc into smaller, more specific files

source "/root/.shells/default.bashrc"
source "/root/.shells/exports.bashrc"
source "/root/.shells/alias.bashrc"
source "/root/.shells/prompt.bashrc"

# Welcome message
echo -ne "Good Morning, Sakana! It's "; date '+%A, %B %-d %Y'


