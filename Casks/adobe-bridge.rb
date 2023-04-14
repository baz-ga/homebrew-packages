cask "adobe-bridge" do
    version "2023,13.0.3.693"
    sha256 :no_check

    url "https://creativecloud.adobe.com/apps/download/bridge"
    name "Adobe Bridge"
    desc "A powerful creative asset manager."
    homepage "https://www.adobe.com/products/bridge.html"

installer manual: "Bridge Installer.app"
uninstall script: {
            executable: "/Library/Application Support/Adobe/Uninstall/KBRG_13_0_3_32.app/Contents/MacOS/Uninstaller"
          }

end
