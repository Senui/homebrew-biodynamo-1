class BdmRoot < Formula
  desc "A modular scientific software framework"
  homepage "https://github.com/root-project/root"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=root_v6.11.01_macos64_LLVM-Clang-4.0_263508429d.tar.gz"
  sha256 "fe0143db4b7a0abc4265d5512efb66c96477bcadda87e6c450140b7da8e84ea8"
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
