#!/usr/bin/env sh

PLUGIN_PATH='User/globalStorage/zokugun.sync-settings'

OS="$(uname)"
case "${OS}" in
#   'Linux')
#     ;;
  'Darwin')
    PLUGIN_SETTINGS="${HOME}/Library/Application Support/VSCodium/${PLUGIN_PATH}"
    ;;
  *)
    printf -- "ERROR: ${OS} support not implemented."
    exit 1
    ;;
esac

codium --install-extension zokugun.sync-settings
mkdir -p ${PLUGIN_SETTINGS}
git clone --depth 1 git@github.com:xsc27/settings-codium.git "${PLUGIN_SETTINGS}/repository"
cp -v "${PLUGIN_SETTINGS}/repository/settings.yml" "${PLUGIN_SETTINGS}"
