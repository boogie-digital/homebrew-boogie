# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Preferred install (no GitHub username):
#   brew install boogie-digital/boogie/jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.7.0.tar.gz"
  sha256 "f4b2daa819d9bc5691e588fae55df82203e50251cd759c10d9304f812134542e"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.7.0", shell_output("#{bin}/jmapcli --version")
  end
end
