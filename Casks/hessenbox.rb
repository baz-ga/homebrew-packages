cask "hessenbox" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "16.6.100" #21.12.1,5ID6IR1F
  sha256 :no_check
  url "https://hessenbox-a10.rz.uni-frankfurt.de/client_deployment/PowerFolder_Latest_Mac.dmg"
  name "Hessenbox"
  desc "Cloud service."
  homepage "https://www.rz.uni-frankfurt.de/70717686/Hessenbox"

#TODO check for auto_updates
#  livecheck do
#    url ""
#
#    end
#  end

  auto_updates true

  app "PowerFolder.app"

  #preflight do
#    `softwareupdate --install-rosetta`
#  end

#  uninstall script: "/Applications/Avid_Uninstallers/Avid\ Link/Avid\ Link\ Uninstaller.app/Contents/MacOS/AvidUninstaller"

  zap trash: [
    #{}"~/Library/Preferences/com.avid.link.plist",
    #{}"~/Library/Preferences/com.avid.Avid Link.plist",
    #{}"/Library/Application\ Support/CrashReporter/AvidLink_*.plist"
  ] #TODO ? "/Applications/Avid/Avid Link"
end
