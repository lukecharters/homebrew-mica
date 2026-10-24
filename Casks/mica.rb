cask "mica" do
  version "0.2"
  sha256 "64df31af01eae50c83a7231f4740823245fa3e4c6b9930a4777d43b79125f924"

  url "https://github.com/lukecharters/Mica/releases/download/v#{version}/Mica-#{version}.dmg"
  name "Mica"
  desc "The Mac admin's Icon Creation App"
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
