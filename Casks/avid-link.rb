cask "avid-link" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "21.6.1,EM6HW0KF" #21.12.1,5ID6IR1F
  sha256 :no_check

  url "https://cdn.avid.com/AvidLink/2021.6.1/EM6HW0KF/Avid_Link_21.6.1_Mac.dmg"
  #url "https://cdn.avid.com/AvidLink/20#{version}/5ID6IR1F/Avid_Link_#{version}_Mac.dmg"
  name "Avid Link"
  desc "Avid Link is a free app for anyone looking to find, connect, and collaborate with other creatives, promote your work and get discovered, and purchase and manage products—all in one interface."
  homepage "https://www.avid.com/products/avid-link"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    strategy :page_match do |page|
      version = page.match(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
      build = page.match(/build\sid:\s(\d+)/i)
      next if version.blank? || build.blank?

      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

  pkg "AvidLink_Installer.pkg"

  uninstall
  zap trash [
    "~/Library/Preferences/com.avid.link.plist",
    "~/Library/Preferences/com.avid.Avid Link.plist",
    "/Library/Application\ Support/CrashReporter/AvidLink_*.plist"
    #"/Applications/Avid/Avid Link"
  ]
end
