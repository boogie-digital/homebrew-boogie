# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Preferred install (no GitHub username):
#   brew install boogie-digital/boogie/jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.7.4.tar.gz"
  sha256 "a1ccd03de4f127becde9e2b408e84d34fafe30cb84a07ec41df1510c48648068"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.7.4", shell_output("#{bin}/jmapcli --version")
  end
end
