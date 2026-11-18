cask "retain-process" do
  version "1.0.2"
  sha256 "a29bff1d3a56b5c17666f569fbcbbf87128278830ba36e70172ee564ab9a0599"

  url "https://github.com/foo-tec/homebrew-tap/releases/download/retain-process-v#{version}/RetainProcess-#{version}.dmg"
  name "RetainProcess"
  desc "Menu bar utility to run, stop, monitor and log developer processes"
  homepage "https://github.com/foo-tec/homebrew-tap"

  auto_updates false
  depends_on macos: :ventura

  app "RetainProcess.app"
  binary "#{appdir}/RetainProcess.app/Contents/MacOS/retain-process"

  uninstall quit: "dev.foo.RetainProcess"

  zap trash: [
    "~/Library/Application Support/RetainProcess",
    "~/Library/Logs/RetainProcess",
  ]
end
