No Longer Needed - Links created in ansible

#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# All of the following commands create the relevent
directories if they do not exist

# i3
if [ ! -L ~/.config/i3/config ]; then
  mkdir -p ~/.config/i3;
  ln -s ${BASEDIR}/i3/config ~/.config/i3/config;
fi

# sway
if [ ! -L ~/.config/sway/config ]; then
  mkdir -p ~/.config/sway;
  ln -s ${BASEDIR}/sway/config ~/.config/sway/config;
fi

# tmux
if [ ! -L ~/.tmux.conf ]; then
  ln -s ${BASEDIR}/tmux/.tmux.conf ~/.tmux.conf;
fi

if [ ! -L ~/.live-packs/joseph-pack ]; then
  ln -s ${BASEDIR}/.live-packs/joseph-pack ~/.live-packs/joseph-pack;
fi
