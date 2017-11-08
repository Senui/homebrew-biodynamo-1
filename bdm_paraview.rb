class BdmParaview < Formula
  desc "An open-source, multi-platform data analysis and visualization application"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_llvm-5.0.tar.gz"
  sha256 "e888aca96d30f045b07b6a433265ccc6ae7db241e416ee97ed6ceecd9340ec26"
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
