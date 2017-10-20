class BdmParaview < Formula
  desc "An open-source, multi-platform data analysis and visualization application"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_llvm-5.0.tar.gz"
  sha256 "62791ec4453f66d2ea2730f4ae98fc8bede6d7e065b84020546f14bcf7c96df9"
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
