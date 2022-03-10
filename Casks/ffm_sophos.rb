cask "ffm_sophos" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "9.5.4"
  sha256 :no_check
  url "https://www.rz.uni-frankfurt.de/84860911/Sophos_Installer_V#{version.gsub(".", "_")}_mit_AutoUpdate_JWGU.zip"
  name "Sophos Antivirus"
  desc "Entreprise specific antivirus software."
  homepage "https://www.rz.uni-frankfurt.de/45663375/SOPHOS_Anti_Virus"

#TODO check for auto_updates
#  livecheck do
#    url ""
#
#    end
#  end

  auto_updates true

  installer manual: "Sophos Installer.app"

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
