class BdmParaview < Formula
  desc "An open-source, multi-platform data analysis and visualization application"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_llvm-5.0.tar.gz"
  sha256 "1f17550e5eb685abd5b71edc61ab925920bcd98dd9550b0720e81eb474e924fd"
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
