#!/bin/bash
set -e -u

PACKAGES=""
PACKAGES+=" ant" # Used by apksigner.
PACKAGES+=" asciidoc"
PACKAGES+=" automake"
PACKAGES+=" bison"
PACKAGES+=" clang" # Used by golang, useful to have same compiler building.
PACKAGES+=" curl" # Used for fetching sources.
PACKAGES+=" flex"
PACKAGES+=" gettext" # Provides 'msgfmt' which the apt build uses.
PACKAGES+=" git" # Used by the neovim build.
PACKAGES+=" libglib2.0-dev" # Provides 'glib-genmarshal' which the glib build uses.
PACKAGES+=" libtool-bin"
PACKAGES+=" libncurses5-dev" # Used by mariadb for host build part.
PACKAGES+=" tar"
PACKAGES+=" unzip"
PACKAGES+=" m4"
PACKAGES+=" openjdk-8-jdk-headless" # Used for android-sdk.
PACKAGES+=" pkg-config"
PACKAGES+=" xutils-dev" # Provides 'makedepend' which the openssl build uses.
PACKAGES+=" ruby-dev" # Needed by metasploit
PACKAGES+=" libpq-dev" # Needed by metasploit
PACKAGES+=" libpcap-dev" # Needed by metasploit
PACKAGES+=" libsqlite3-dev" # Needed by metasploit

DEBIAN_FRONTEND=noninteractive sudo apt-get install -yq $PACKAGES

sudo mkdir -p /data/data/com.msfdroid/files/usr
sudo chown -R `whoami` /data

