cask 'font-bravura' do	
    version '1.392'	
    sha256 :no_check #'abf55d5e01db584c9a00a7395bfc64b667e1b35240a7d188e8eb393a8fbb51b6'

    url "https://github.com/steinbergmedia/bravura/archive/refs/tags/bravura-#{version}.zip"	
    name 'Bravura'	
    homepage 'https://www.smufl.org/fonts/'	
  
    #font 'bravura-bravura-1.392/redist/otf/Bravura.otf'	
    #font 'bravura-bravura-1.392/redist/otf/BravuraText.otf'
    artifact 'bravura-bravura-1.392/redist/otf/Bravura.otf', target: "/Library/Fonts/Bravura.otf"
    artifact 'bravura-bravura-1.392/redist/otf/BravuraText.otf', target: "/Library/Fonts/BravuraText.otf"
  end