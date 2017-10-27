class BdmParaview < Formula
  desc "An open-source, multi-platform data analysis and visualization application"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_llvm-5.0.tar.gz"
  sha256 "412c664ba0a23b0d54ebee6e0afd4905146ef2cf30a9eeac157f0b8bd1dcc913"
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
