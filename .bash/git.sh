if [[ "$GIT_AUTHOR_NAME" -eq "" ]]; then
  (cat <<MESSAGE
Please configure $HOME/.bash/user.sh with your git info.

export GIT_AUTHOR_NAME="Your name"
export GIT_AUTHOR_EMAIL="Your e-mail"
MESSAGE
) > /dev/stderr
else
  git config --global user.name "$GIT_AUTHOR_NAME"
  git config --global user.email "$GIT_AUTHOR_EMAIL"
fi

git config --global core.excludesfile ~/.gitignore
