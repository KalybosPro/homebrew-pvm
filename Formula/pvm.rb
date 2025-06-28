require "language/node"

class Pvm < Formula
  desc "PHP Version Manager (comme fvm pour Flutter)"
  homepage "https://github.com/KalybosPro/pvm"
  url "https://github.com/KalybosPro/pvm/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b417bb74a6c8394b7587fd4d12382ea42ccc13ad7f372a89304af75fc70cd3ec"
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