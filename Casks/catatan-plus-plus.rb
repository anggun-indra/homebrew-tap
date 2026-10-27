cask "catatan-plus-plus" do
  version "1.0.3"
  sha256 "5d78567980ace9db1cc9c23b05c2369a962f837594675b6327aae59e3bcd8b71"

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
