class Biodynamo < Formula
  desc "A high-performance platform for large-scale biological simulations"
  homepage "https://github.com/Biodynamo/biodynamo"
  #TODO: replace with correct link / hashsum
  url "https://github.com/BioDynaMo/biodynamo/releases/download/v0.1.0/biodynamo-0.1.0.sierra.tar.gz"
  sha256 "a8987bc79e38e48890bfbadefee7202e31f88877018b858622207c1b510bccd3"
  version "0.1.0"

  depends_on "Biodynamo/biodynamo/bdm_root" => :build
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "llvm" => :build
  depends_on "python" => :build
  depends_on "python3" => :build
  depends_on "Biodynamo/biodynamo/bdm_paraview" => :recommended

  def install
    (prefix + "bin").install Dir["bin/*"]
    (prefix + "lib").install Dir["lib/*"]
    (prefix + "include").install Dir["include/*"]
    (prefix + "share").install Dir["share/*"]
  end

  test do
    system "false"
  end
end
