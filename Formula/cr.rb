class Cr < Formula
  desc "Common Room from the command-line"
  homepage "https://www.commonroom.io"
  url "https://registry.npmjs.org/@commonroomio/cli/-/cli-0.3.0.tgz"
  sha256 "43004d38c25137d7a674bb372e3a5ebf4b6de70463634ea595da65712e00353b"
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
