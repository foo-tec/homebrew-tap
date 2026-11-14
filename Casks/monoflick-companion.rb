cask "monoflick-companion" do
  version "1.3.1"
  sha256 "f90f20a1e1b0292803238a928b1d644c6f7d241ee88ebb94ae622a0fd4963b0c"

  url "https://github.com/foo-tec/monoflick-releases/releases/download/v#{version}/MonoFlick-Companion-#{version}.dmg"
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
