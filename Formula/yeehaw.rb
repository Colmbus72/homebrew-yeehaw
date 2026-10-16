# This formula is rewritten by the yeehaw-publish trail on every release.
# Values between the {{mustache}} markers are template placeholders.
class Yeehaw < Formula
  desc "Terminal ranch management for projects, servers, and Claude sessions"
  homepage "https://yeehaw.cool"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-aarch64-apple-darwin.tar.xz"
      sha256 "74f073c7b70a8d8a2f1de2d02d2a100007f29fc1f8544ce9fc879009c611f39b"
    end
    on_intel do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-x86_64-apple-darwin.tar.xz"
      sha256 "5cfacf495c6db3023f40b58f1d1c6692f7e556f1e23e402175c6bb7c14b4ae4b"
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
