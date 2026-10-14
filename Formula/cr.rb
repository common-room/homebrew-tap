class Cr < Formula
  desc "Common Room from the command-line"
  homepage "https://www.commonroom.io"
  url "https://registry.npmjs.org/@commonroomio/cli/-/cli-0.4.0.tgz"
  sha256 "e9fd3ab10c35bc39cb903a8a17ffb36f367e28288371c9dcacd396a82e54e189"
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
