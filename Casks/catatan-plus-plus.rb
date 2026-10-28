cask "catatan-plus-plus" do
  version "1.0.4"
  sha256 "160fc7fad8b54a2065a50943cbbd171e036ae2b935b6ae1c039ab7e888bef427"

  url "https://github.com/anggun-indra/catatan-plus-plus/releases/download/v#{version}/Catatan%2B%2B-v#{version}-macOS-arm64.dmg"
  name "Catatan++"
  desc "Native Apple Silicon macOS port of the Notepad++ editing engine"
  homepage "https://anggun-indra.github.io/catatan-plus-plus/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Catatan++.app"

  zap trash: [
    "~/Library/Saved Application State/io.github.anggun-indra.catatan-plus-plus.savedState",
    "~/Library/Preferences/io.github.anggun-indra.catatan-plus-plus.plist",
  ]
end
