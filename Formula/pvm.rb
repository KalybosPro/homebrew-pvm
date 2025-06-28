require "language/node"

class Pvm < Formula
  desc "PHP Version Manager (comme fvm pour Flutter)"
  homepage "https://github.com/KalybosPro/pvm"
  url "https://github.com/KalybosPro/pvm/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "d4f97df613de702c4a8290536e40d63be81a5d3369e505bca3dd0e631b84922d"
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