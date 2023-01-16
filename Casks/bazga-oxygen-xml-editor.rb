cask "bazga-oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  #TODO switch between architecture build and sha256
  version "24.1,2022110312" #Build id 2021121415
  sha256 "d82f188e16ae6fb8eafd7b7f6404c0088b07d9d7958f380b87c887803364e479"

  url "https://archives.oxygenxml.com/Oxygen/Editor/InstData#{version.split(',').first}/MacOSX/VM/oxygen-openjdk#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

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
