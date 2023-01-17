cask "bazga-oxygen-xml-editor" do
  #arch currently not needed, e.g. in oxygen-openjdk#{arch}.dmg
  #arch = Hardware::CPU.intel? ? "" : "-aarch64"

  #TODO switch between architecture build and sha256
  version "24.1,2022110312" #Build id 2021121415
  sha256 "bd28a3b961e0bb831dd3a3b9cf4999edc4c7738c9284dd8655b3d7c183702f23" #:no_check # md5 "e4dee154352970f3c265e6b79a0bed63"

  url "https://archives.oxygenxml.com/Oxygen/Editor/InstData#{version.split(',').first}/MacOSX/VM/oxygen-openjdk.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  depends_on macos: ">= :monterey"
  #depends_on cask: "zulu-jdkfx-11"

#TODO check for updates
#  livecheck do
#    url "https://www.oxygenxml.com/rssBuildID.xml"
#    strategy :page_match do |page|
#      version = page.match(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
#      build = page.match(/build\sid:\s(\d+)/i)
#      next if version.blank? || build.blank?
#
#      "#{version[1]},#{build[1]}"
#    end
#  end

  suite "Oxygen XML Editor"
end
