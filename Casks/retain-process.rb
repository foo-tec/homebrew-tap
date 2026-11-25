cask "retain-process" do
  version "1.1.1"
  sha256 "3e872f9cf686e9769fab2dfa10b0f15eed170f656002ecb387942cdffc960b01"

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
