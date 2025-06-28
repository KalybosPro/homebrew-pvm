require "language/node"

class Pvm < Formula
  desc "PHP Version Manager (comme fvm pour Flutter)"
  homepage "https://github.com/KalybosPro/pvm"
  url "https://github.com/KalybosPro/pvm/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "570c889ca461d832b8d342560188474b97dea852a37e83bc4842166ae3fbd4a7"
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