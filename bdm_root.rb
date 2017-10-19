class BdmRoot < Formula
  desc "A modular scientific software framework"
  homepage "https://github.com/root-project/root"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=root_v6.11.01_macos64_LLVM-Clang-5.0_263508429d.tar.gz"
  sha256 "fdca7d142fb29d657305f30a5d62b2c5c8112fb339d9a7b054a654520c88cfb4"
  version "6.11.01"
  
  bottle :unneeded

  # this will do:
  # tar -zxf root.tar.gz && cd root
  # cp root/* /usr/local/Cellar/bdm_root/#version
  # symlink into /usr/local/[bin | lib | share | include | ..]
  def install
    prefix.install Dir["*"] 
  end

  test do
    system "false"
  end
end
