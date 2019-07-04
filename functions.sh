#!/usr/bin/env bash

# gets the latest version for a git repo. 
# ex: VERSION=$(get_latest_release FortAwesome/Font-Awesome)
get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}


