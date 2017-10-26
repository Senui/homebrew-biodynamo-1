class BdmParaview < Formula
  desc "An open-source, multi-platform data analysis and visualization application"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_llvm-5.0.tar.gz"
  sha256 "9b96c762854e41099744a822e4b09a84242ecf0523a019ed95dca76e21595c7e"
  version "5.4.1"
  
  bottle :unneeded
  
  depends_on "qt5" => :build

  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
