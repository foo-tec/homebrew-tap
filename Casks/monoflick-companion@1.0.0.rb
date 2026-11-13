cask "monoflick-companion@1.0.0" do
  version "1.0.0"
  sha256 "410d150f570854208facae211e06cd6347086097667601c8222819f2f50b46d2"

  url "https://github.com/foo-tec/homebrew-tap/releases/download/monoflick-companion-v#{version}/MonoFlick-Companion-#{version}.dmg"
  name "MonoFlick Companion"
  desc "Companion for the one-handed iPhone keyboard MonoFlick"
  homepage "https://foo-tec.com/monoflick/"

  livecheck do
    skip "Pinned legacy version"
  end

  conflicts_with cask: "monoflick-companion"
  depends_on macos: :sequoia

  app "MonoFlick Companion.app"

  zap trash: [
    "~/Library/Application Support/MonoFlick Companion",
    "~/Library/Preferences/dev.foo.MonoFlick.Companion.plist",
  ]
end
