# Codium Settings

Configuration for [VSCodium](https://github.com/VSCodium/vscodium),
synced with [Sync Settings](https://github.com/zokugun/vscode-sync-settings).

## Update product.json

`product.json`:

* Linux: `$XDG_CONFIG_HOME/VSCodium` (`/usr/share/codium/resources/app/`) or `~/.config/VSCodium`
* macOS: `~/Library/Application Support/VSCodium`

### [How to use the VS Code Marketplace](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#howto-vscode-marketplace)

```json
  "extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items",
    "controlUrl": "",
    "recommendationsUrl": ""
  }
```

#### Open VSX Registry

```json
  "extensionsGallery": {
    "serviceUrl": "https://open-vsx.org/vscode/gallery",
    "itemUrl": "https://open-vsx.org/vscode/item"
  }
```

### [proprietary-extensions](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#proprietary-debugging-tools)

```json
  "extensionAllowedProposedApi": [
    // ...
    "ms-vscode-remote.vscode-remote-extensionpack",
    "ms-vscode-remote.remote-wsl",
    // ...
  ],
```

## [Sync Settings](https://github.com/zokugun/vscode-sync-settings).

```sh
codium --install-extension zokugun.sync-settings
git clone --depth 1 origin git@github.com:xsc27/settings-codium.git \
  ~/Library/Application Support/VSCodium/User/globalStorage/zokugun.sync-settings/repository
```

## Mac

[Microsoft/vscode Issue #7426, comment-277737150](https://github.com/Microsoft/vscode/issues/7426#issuecomment-277737150)

### VSCodium

```sh
sudo chown -R $USER ~/Library/Caches/com.vscodium.ShipIt
xattr -dr com.apple.quarantine /Applications/VSCodium.app
```

### VSCode

```sh
sudo chown -R $USER ~/Library/Caches/com.microsoft.VSCode.ShipIt
xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
```
