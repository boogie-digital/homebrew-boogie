# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Preferred install (no GitHub username):
#   brew install boogie-digital/boogie/jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.7.1.tar.gz"
  sha256 "3df6276e3e4da00de0b6348ae9ccb338799b4c276c0c4b4d295f49c5848a63b8"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.7.1", shell_output("#{bin}/jmapcli --version")
  end
end
