# Anggun Indra's Homebrew Tap

Official Homebrew Tap for [Catatan++](https://anggun-indra.github.io/catatan-plus-plus/) and developer tools.

## Installation

### Catatan++ (Native Apple Silicon macOS Port of Notepad++)

Install directly via Homebrew Cask:

```bash
brew install --cask anggun-indra/tap/catatan-plus-plus
```

Or add the tap first and install:

```bash
brew tap anggun-indra/tap
brew install --cask catatan-plus-plus
```

### Upgrading

```bash
brew upgrade --cask catatan-plus-plus
```

### macOS Gatekeeper Note
Catatan++ is free open-source software built from source and not signed with an enterprise Apple Developer certificate ($99/year). If macOS displays an *"Apple cannot check it for malicious software"* alert upon first launch:

```bash
xattr -cr /Applications/Catatan++.app
```

Or open **Finder** &rarr; right-click **Catatan++.app** in `/Applications` &rarr; select **Open** &rarr; click **Open**.
