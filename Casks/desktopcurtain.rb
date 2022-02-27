cask "desktopcurtain" do
  version "313" #actually is 3.1.3 but in doenloadfile without dot
  sha256 :no_check

  url "https://manytricks.com/download/_do_not_hotlink_/desktopcurtain#{version}.dmg"
  name "Desktop Curtain"
  desc "Covers your messy desktop. Not tat your desktop is ever messy."
  homepage "https://manytricks.com/desktopcurtain/"

  livecheck do
    url "https://manytricks.com/download/_do_not_hotlink_/"
    strategy :header_match
    regex(/desktopcurtain\d+/i)
  end

  auto_updates true

  app "Desktop Curtain.app"

  zap trash: [
    "~/Library/Application\ Scripts/com.manytricks.DesktopCurtain",
    "~/Library/Containers/com.manytricks.DesktopCurtain",
    "~/Library/Preferences/com.manytricks.DesktopCurtain.plist",
    "/private/var/db/receipts/com.manytricks.DesktopCurtain.bom",
    "/private/var/db/receipts/com.manytricks.DesktopCurtain.plist "
  ]
end
