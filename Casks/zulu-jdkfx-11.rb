cask "zulu-jdkfx-11" do
  version "11.0.14.1"
  #zulu version "11.54.25"
  sha256 "5d8fbd3f6b7684e3aebbca414cae58dfe1eb544dbf3b60266c5b3f6adad0cb37"

  url "https://cdn.azul.com/zulu/bin/zulu11.54.25-ca-fx-jdk#{version}-macosx_aarch64.dmg"
  name "JDK FX"
  desc "The Java platform for the modern cloud enterprise starts with Azul Platform Core, the world's #1 supported build of OpenJDK."
  homepage "https://www.azul.com/"

  livecheck do
    url "https://cdn.azul.com/zulu/bin/"
    strategy :header_match
    regex(/zulu11\.\d{1,2}\.\d{1,2}-ca-fx-jdk(11\.\d{1,2}.\d{1,2}\.\d{1,2})-macosx_aarch64.dmg*/i)
  end

  auto_updates false

  pkg "Double-Click to Install Azul Zulu JDK 11.pkg"

  #uninstall pkgutil:

  zap trash: [
    "/Library/Java/JavaVirtualMachines/zulu-11.jdk",
#    "~/Library/Caches/Zotero",
#    "~/Library/Preferences/org.zotero.zotero-beta.plist",
#    "~/Library/Saved Application State/org.zotero.zotero-beta.savedState",
  ]
end
