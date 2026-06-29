cask "hydra" do
  version "0.2.0"
  sha256 "78c8316024771b3d6da37e76bfc556219caeead4fd2e39342cba49af3332efa4"

  url "https://github.com/pushipu/Hydra/releases/download/v#{version}/Hydra-#{version}-macos.zip"
  name "Hydra"
  desc "Multithreaded macOS download manager with browser-session passthrough"
  homepage "https://github.com/pushipu/Hydra"

  app "Hydra.app"

  caveats <<~EOS
    Hydra is ad-hoc signed, not notarized yet. If macOS says it "cannot be opened",
    install without quarantine:

      brew install --cask --no-quarantine pushipu/tap/hydra

    or remove quarantine after install:

      xattr -dr com.apple.quarantine "#{appdir}/Hydra.app"

    After launch, install the browser extension from the app
    (onboarding, Settings -> Capture, or the menu-bar menu).
  EOS

  zap trash: [
    "~/Library/Application Support/Hydra",
    "~/Library/Preferences/com.hydra.downloads.plist",
  ]
end
