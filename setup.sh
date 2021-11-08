#!/bin/bash

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
gem list
gem update
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
