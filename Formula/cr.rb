class Cr < Formula
  desc "Common Room from the command-line"
  homepage "https://www.commonroom.io"
  url "https://registry.npmjs.org/@commonroomio/cli/-/cli-0.1.1.tgz"
  sha256 "a617f94a61314063b914fa0252a9cf7f73dfd89192eacc083d4c8fdc81b59a91"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Common Room CLI", shell_output("#{bin}/cr --help")
  end
end
