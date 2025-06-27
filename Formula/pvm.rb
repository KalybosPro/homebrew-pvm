require "language/node"

class Pvm < Formula
  desc "PHP Version Manager (comme fvm pour Flutter)"
  homepage "https://github.com/KalybosPro/pvm"
  url "https://github.com/KalybosPro/pvm/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1d1383fafcc21edaa150a52e45f17740545a99f72a137794bbde13a0e20419ac"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/pvm", "help"
  end
end