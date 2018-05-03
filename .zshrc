
for config (~/git/dot_files/zsh/*.zsh) source $config
alias vi=`which nvim`
export mmtfdb=/home/danpf/Databases/pdb/

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dan/bin/google-cloud-sdk/path.zsh.inc' ]; then source '/home/dan/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/dan/bin/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/dan/bin/google-cloud-sdk/completion.zsh.inc'; fi
