cask "retain-process" do
  version "1.1.0"
  sha256 "87995ea007763492f595715f8405a1a47bbe25e3e0dab5ed15786f4ef5b7a194"

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
