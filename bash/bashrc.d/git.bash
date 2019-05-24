# enable git prompt and bash tab completion
if [[ -f /opt/git-2.17.1/contrib/completion/git-prompt.sh ]]
then
  source /opt/git-2.17.1/contrib/completion/git-prompt.sh
  source /opt/git-2.17.1/contrib/completion/git-completion.bash
elif [[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]]
then
  source /usr/share/git-core/contrib/completion/git-prompt.sh
fi
