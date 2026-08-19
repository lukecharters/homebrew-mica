cask "mica" do
  version "0.1"
  sha256 "7dbf8dd38f225103ed979d795111df1f52728a4fb2f3b282ed34fd2af6d17dab"

  url "https://github.com/lukecharters/Mica/releases/download/v#{version}/Mica-#{version}.dmg"
  name "Mica"
  desc "The Mac-admin's Icon Creation App"
  homepage "https://github.com/lukecharters/Mica"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Mica.app"
  binary "#{appdir}/Mica.app/Contents/MacOS/mica-cli"

  zap trash: "~/Library/Containers/com.lukecharters.Mica"
end
