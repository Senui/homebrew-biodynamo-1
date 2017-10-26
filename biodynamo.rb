class Biodynamo < Formula
  desc "A high-performance platform for large-scale biological simulations"
  homepage "https://github.com/Senui/biodynamo"
  #TODO: replace with correct link / hashsum
  url "https://github.com/Senui/biodynamo/releases/download/v0.0.9/biodynamo-0.1.0.sierra.tar.gz"
  sha256 "ac925b95b8152aaaef57eddab1efbab6494bf770897e7008027e5798b63d2b4d"
  version "0.1.0"

  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "cmake" => :build
  depends_on "llvm" => :build
  depends_on "Senui/biodynamo/bdm_paraview" => :recommended

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
