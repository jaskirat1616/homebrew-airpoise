cask "airpoise" do
  version "1.0.0"
  sha256 "90821b64c20a4ce606ff799e14661606da53d97320dce3f614a41440067ef644"

  url "https://github.com/jaskirat1616/AirPoise/releases/download/v#{version}/AirPoise-#{version}.dmg"
  name "AirPoise"
  desc "AirPods posture coaching and head-gesture shortcuts in the menu bar"
  homepage "https://airpoise.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AirPoise.app"

  zap trash: "~/Library/Application Support/AirPoise"

  caveats <<~EOS
    AirPoise needs AirPods with head tracking (Pro, 3, 4, Max, Beats Fit Pro)
    set as the Mac's audio output, and Motion & Fitness permission.

    The build is signed but not notarized. On first launch:
      right-click AirPoise.app -> Open
  EOS
end
