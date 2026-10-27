cask "swapr-trans" do
  version "1.0.2"
  sha256 "83a48170b40cf20dfc1f62813a65211fb27226780382ecb86fecc67b6b34d296"

  url "https://github.com/linrol/swapr-trans/releases/download/v#{version}/SwaprTrans-#{version}.dmg"
  name "SwaprTrans"
  desc "In-place text translation and rewrite tool for macOS"
  homepage "https://linrol.github.io/swapr-trans/"

  livecheck do
    url "https://github.com/linrol/swapr-trans/releases/latest/download/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "SwaprTrans.app"

  zap trash: [
    "~/Library/Preferences/com.linrol.SwaprTrans.plist",
    "~/Library/Caches/com.linrol.SwaprTrans",
  ]
end
