class Cr < Formula
  desc "Common Room from the command line"
  homepage "https://www.commonroom.io"
  url "https://registry.npmjs.org/@commonroomio/cli/-/cli-0.1.0.tgz"
  sha256 "75e2158bba494e7c7b8c3b977277b2fcef3341df9fa55232ad51162a9ac7db6b"
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
