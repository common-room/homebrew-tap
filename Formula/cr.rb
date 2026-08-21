class Cr < Formula
  desc "Common Room from the command-line"
  homepage "https://www.commonroom.io"
  url "https://registry.npmjs.org/@commonroomio/cli/-/cli-0.2.0.tgz"
  sha256 "4c24cb9b7697dac5dcae501697de7b223a88f38bddee8a4733c132bdce8eec35"
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
