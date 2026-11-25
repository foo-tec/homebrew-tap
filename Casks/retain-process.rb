cask "retain-process" do
  version "1.1.2"
  sha256 "455ef6a221b4ea0c5d894fd7a0e896ecf2be788c4da53ee5d22119ea253174f3"

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
