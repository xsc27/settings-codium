#!/usr/bin/env sh

PLUGIN_PATH='VSCodium/User/globalStorage/zokugun.sync-settings'

set -eu

OS="$(uname)"
case "${OS}" in
  'Linux')
    PLUGIN_SETTINGS="${XDG_CONFIG_HOME}/${PLUGIN_PATH}"
    ;;
  'Darwin')
    PLUGIN_SETTINGS="${HOME}/Library/Application Support/${PLUGIN_PATH}"
    ;;
  *)
    printf -- "ERROR: %s support not implemented." "${OS}"
    exit 1
    ;;
esac

codium --force --install-extension zokugun.sync-settings
mkdir -p "${PLUGIN_SETTINGS}"
git clone --depth 1 git@github.com:xsc27/settings-codium.git "${PLUGIN_SETTINGS}/repository" \
  || git --git-dir "${PLUGIN_SETTINGS}/repository/.git" pull --rebase
cp -v "${PLUGIN_SETTINGS}/repository/settings.yml" "${PLUGIN_SETTINGS}"

