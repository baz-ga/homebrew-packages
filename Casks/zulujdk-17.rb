cask "zulujdk-17" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  
  version "17.32.13,17.0.2"
  #zulu-version,java-version
  
  if arch == "x64"
    sha256 "73d9fd535a690c1fdcc9099edbb7f9e9b8897e30573c0be95360e6896804c203"
  else
    sha256 "74d8e059865fdb8cfbc202bbd93a05c5a67a2d12947b09e30d637dd9b7e4011f"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.split(',').first}-ca-jdk#{version.split(',').last}-macosx_#{arch}.dmg"
  
  name "Zulu OpenJDK"
  desc "The Java platform for the modern cloud enterprise starts with Azul Platform Core, the world's #1 supported build of OpenJDK."
  homepage "https://www.azul.com/"

  livecheck do
    url "https://cdn.azul.com/zulu/bin/"
    strategy :page_match
    regex(%r{href=.*?zulu17\d{1,2}\.\d{1,2}-ca-jdk(17\.\d{1,2}.\d{1,2}\.\d{1,2})-macosx_(aarch64|x64).dmg/i})
  end

  auto_updates false

  pkg "Double-Click to Install Azul Zulu JDK 17.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.17"

end
