cask "bazga-oxygen-xml-editor" do
  # arch e.g. in oxygen-openjdk#{arch}.dmg
  arch = Hardware::CPU.intel? ? "" : "-aarch64"
  sha = Hardware::CPU.intel? ? "bd28a3b961e0bb831dd3a3b9cf4999edc4c7738c9284dd8655b3d7c183702f23" : "5f353c0f841ded34ddb42a287d531ec2d5ec23755921b94c31202f642ec651ab"

  # TODO switch between architecture build and sha256
  version "24.1,2022110312"
  sha256 #{sha}
  

  url "https://archives.oxygenxml.com/Oxygen/Editor/InstData#{version.split(',').first}/MacOSX/VM/oxygen-openjdk#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  depends_on macos: ">= :monterey"

  # TODO check for minor updates matching current major version
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
