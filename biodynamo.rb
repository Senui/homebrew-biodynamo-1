class Biodynamo < Formula
  desc "A high-performance platform for large-scale biological simulations"
  homepage "https://github.com/Senui/biodynamo"
  #TODO: replace with correct link / hashsum
  url "https://github.com/Senui/biodynamo/releases/download/v0.0.9/biodynamo-0.1.0.sierra.tar.gz"
  sha256 "3f94c6eacd2046e020a143c582e88b5405b4acb158880e729d3708ca3fbd7442"
  version "0.1.0"

  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "llvm" => :build
  depends_on "python" => :build
  depends_on "python3" => :build
  depends_on "Senui/biodynamo/bdm_paraview" => :recommended

  def install
    (prefix + "bin").install Dir["bin/*"]
    (prefix + "lib").install Dir["lib/*"]
    (prefix + "include").install Dir["include/*"]
    (prefix + "share").install Dir["share/*"]
    python3 -m pip install requests
  end

  test do
    system "false"
  end
end
