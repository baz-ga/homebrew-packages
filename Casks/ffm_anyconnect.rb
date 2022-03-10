cask "ffm_anyconnect" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "4.10.00093"
  sha256 :no_check
  url "https://www.rz.uni-frankfurt.de/101565862/anyconnect-win-#{version.gsub(".", "_")}-core-vpn-predeploy-k9"
  name "Cisco AnyConnect"
  desc "VPN client."
  homepage "https://www.rz.uni-frankfurt.de/45186826/VPN_SSL"

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
