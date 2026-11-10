# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Preferred install (no GitHub username):
#   brew install boogie-digital/boogie/jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.7.2.tar.gz"
  sha256 "63c469890289c353ddd9337d115eb808f8c230f5ba7eac6f4562229cde4b4a0e"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.7.2", shell_output("#{bin}/jmapcli --version")
  end
end
