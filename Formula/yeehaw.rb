# This formula is rewritten by the yeehaw-publish trail on every release.
# Values between the {{mustache}} markers are template placeholders.
class Yeehaw < Formula
  desc "Terminal ranch management for projects, servers, and Claude sessions"
  homepage "https://yeehaw.cool"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-aarch64-apple-darwin.tar.xz"
      sha256 "9268d53ff4f05f79530c6862b48f9bae73a7c7d357cba9da35fe8deb55f5e76c"
    end
    on_intel do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-x86_64-apple-darwin.tar.xz"
      sha256 "f653618d62433b1813bb539e4a2448d2da6c270cd5c3c4ff240993682a404510"
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
