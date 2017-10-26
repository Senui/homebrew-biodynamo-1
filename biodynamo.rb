class Biodynamo < Formula
  desc "A high-performance platform for large-scale biological simulations"
  homepage "https://github.com/Senui/biodynamo"
  #TODO: replace with correct link / hashsum
  url "https://github.com/Senui/biodynamo/releases/download/v0.0.9/biodynamo-0.1.0.sierra.tar.gz"
  sha256 "c61458bb03771a0fb7bcd6f11c8731bc2adea414b39100af3d95f9aa3be1d89a"
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
