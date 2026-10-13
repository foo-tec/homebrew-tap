cask "retain-process" do
  version "1.0.1"
  sha256 "9557965c2b17dc6a178f92f1d917d6ce74a42b93c9527660e8f5c991748c8df0"

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
