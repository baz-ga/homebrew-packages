cask "avid-link" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"
  #https://cdn.avid.com/AvidLink/2024.10/10X2QR6Z/Avid_Link_24.10.0_Mac.pkg
  #https://cdn.avid.com/AvidLink/2024.10/10X2QR6Z/Avid_Link_24.10.0_Mac.dmg
  version "24.10.0,10X2QR6Z" #21.12.1,5ID6IR1F
  sha256 :no_check

  url "https://cdn.avid.com/AvidLink/20#{version.split(',').first[0...-2]}/#{version.split(',').last}/Avid_Link_#{version.split(',').first}_Mac.pkg"
  #url "https://cdn.avid.com/AvidLink/20#{version}/5ID6IR1F/Avid_Link_#{version}_Mac.dmg"
  name "Avid Link"
  desc "Avid Link is a free app for anyone looking to find, connect, and collaborate with other creatives, promote your work and get discovered, and purchase and manage products—all in one interface."
  homepage "https://www.avid.com/products/avid-link"

#TODO check for auto_updates
#  livecheck do
#    url ""
#
#    end
#  end

  auto_updates true

  pkg "AvidLink_Installer.pkg"

  uninstall script: "/Applications/Avid_Uninstaller/Avid Link/Avid Link Uninstaller.app/Contents/MacOS/AvidUninstaller"

  zap trash: [
    "~/Library/Preferences/com.avid.link.plist",
    "~/Library/Preferences/com.avid.Avid Link.plist",
    "/Library/Application\ Support/CrashReporter/AvidLink_*.plist"
  ] #TODO ? "/Applications/Avid/Avid Link"
end
