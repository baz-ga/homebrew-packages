cask "zotero-beta" do
  version "6.0-beta.2+8d8170583"
  sha256 :no_check
#https://download.zotero.org/client/beta/6.0-beta.2%2B8d8170583/Zotero-6.0-beta.2%2B8d8170583.dmg
  url "https://download.zotero.org/client/beta/#{version}/#{version}.dmg"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://download.zotero.org/client/beta/"
    strategy :header_match
    regex(/\d\.\d-[\w.%]*/i)
  end

  auto_updates true

  app "Zotero.app"

  zap trash: [
    "~/Library/Application Support/Zotero",
    "~/Library/Caches/Zotero",
    "~/Library/Preferences/org.zotero.zotero-beta.plist",
    "~/Library/Saved Application State/org.zotero.zotero-beta.savedState",
  ]
end
