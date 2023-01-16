cask "bazga-oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  #TODO switch between architecture build and sha256
  version "24.1,2022110312" #Build id 2021121415
  sha256 "6dbb317eafbb9c450608629fdeae0cdd6ca2f84e1284c7573a2090488d9aa14b" #:no_check # md5 "e4dee154352970f3c265e6b79a0bed63"

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
