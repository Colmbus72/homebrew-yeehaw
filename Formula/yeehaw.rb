# This formula is rewritten by the yeehaw-publish trail on every release.
# Values between the {{mustache}} markers are template placeholders.
class Yeehaw < Formula
  desc "Terminal ranch management for projects, servers, and Claude sessions"
  homepage "https://yeehaw.cool"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-aarch64-apple-darwin.tar.xz"
      sha256 "508cfc59de29bba9df477bfec426b10c2088fa9915198dc9e9baa360bdf72970"
    end
    on_intel do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-x86_64-apple-darwin.tar.xz"
      sha256 "34ff53a36ec1d7930812e7f53a71c74045ca7ba779194313cc41b8047b3001d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "{{SHA_AARCH64_UNKNOWN_LINUX_GNU}}"
    end
    on_intel do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "{{SHA_X86_64_UNKNOWN_LINUX_GNU}}"
    end
  end

  def install
    bin.install "yeehaw"
  end

  test do
    assert_predicate bin/"yeehaw", :exist?
    assert_predicate bin/"yeehaw", :executable?
  end
end
