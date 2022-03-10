cask "ffm_anyconnect" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "4.10.00093"
  sha256 :no_check
  url "https://vpn-einwahl.uni-frankfurt.de/CACHE/stc/2/binaries/anyconnect-macos-#{version}-core-vpn-webdeploy-k9.dmg"
  #https://www.rz.uni-frankfurt.de/96616025/anyconnect_macos_4_9_05042_predeploy_k9.dmg
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

  pkg "anyconnect-macos-4.10.00093-core-vpn-webdeploy-k9.pkg"

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
