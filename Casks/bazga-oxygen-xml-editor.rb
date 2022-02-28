cask "bazga-oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "23.1,2021121415" #Build id  2021121415
  sha256 "6e242a713e9533411098e5f070f8d6da"

  url "https://archives.oxygenxml.com/Oxygen/Editor/InstData#{version}/MacOSX/VM/oxygen-openjdk#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  depends_on cask: "zulu-jdkfx-11"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    strategy :page_match do |page|
      version = page.match(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
      build = page.match(/build\sid:\s(\d+)/i)
      next if version.blank? || build.blank?

      "#{version[1]},#{build[1]}"
    end
  end

  suite "Oxygen XML Editor"
end
