cask "katib" do
  version "1.0.0"
  sha256 "c112b85dfbbf7a6303492cea3808a9a4de5f4b1e4aa103532b96bc8db521ecfe"

  url "https://github.com/linrol/katib/releases/download/v#{version}/Katib-#{version}.dmg"
  name "Katib"
  desc "Real-time bidirectional meeting speech transcription and live captions for macOS"
  homepage "https://linrol.github.io/katib/"

  livecheck do
    url "https://github.com/linrol/katib/releases/latest/download/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Katib.app"

  zap trash: [
    "~/Library/Preferences/com.linrol.katib.plist",
    "~/Library/Caches/com.linrol.katib",
  ]
end
