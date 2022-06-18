#!/bin/bash

ANDROID_STUDIO_URL='https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.15/android-studio-2021.2.1.15-linux.tar.gz'

export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
export PATH="$PATH:$HOME/Android/Sdk/platform-tools/"

if [ ! -f "$HOME/.bashrc" ]; then

  cat <<EOF > "$HOME/.bashrc"
HISTSIZE=
HISTFILESIZE=
PS1='\[\033[01;32m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ..="cd .."
EOF

fi

if [ ! -f "$HOME/android-studio/bin/studio.sh" ]; then
  wget "$ANDROID_STUDIO_URL" -O android-studio.tar.gz
  tar xzvf android-studio.tar.gz
  rm android-studio.tar.gz
fi

# Default to 'studio' if no arguments are provided
args="$@"
if [ -z "$args" ]; then
  args="$HOME/android-studio/bin/studio.sh"
fi

exec $args

