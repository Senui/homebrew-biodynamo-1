class BdmQt < Formula
  desc "Cross-platform software development for embedded & desktop"
  homepage "https://www.qt.io/"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=Qt5.9.1_macos64_clang81.tar.gz"
  sha256 "c8315100997216afa40369c54b7c8eeaf855065c7d998a39d8a2db6b11f8de6f"
  version "5.9.1"
  
  bottle :unneeded
  
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
