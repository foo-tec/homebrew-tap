cask "monoflick-companion" do
  version "1.3.0"
  sha256 "e10e1d3c050a598da8eb58cd721e108b619af2bf61dd2dd6595f1e5181715c34"

  url "https://github.com/foo-tec/homebrew-tap/releases/download/monoflick-companion-v#{version}/MonoFlick-Companion-#{version}.dmg"
  name "MonoFlick Companion"
  desc "Companion for the one-handed iPhone keyboard MonoFlick"
  homepage "https://foo-tec.com/monoflick/"

  livecheck do
    skip "Version is managed via direct commits to this tap"
  end

  conflicts_with cask: "monoflick-companion@1.0.0"
  depends_on macos: :sequoia

  app "MonoFlick Companion.app"

  zap trash: [
    "~/Library/Application Support/MonoFlick Companion",
    "~/Library/Preferences/dev.foo.MonoFlick.Companion.plist",
  ]
end
