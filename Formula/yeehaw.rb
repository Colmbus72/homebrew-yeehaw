# This formula is rewritten by the yeehaw-publish trail on every release.
# Values between the {{mustache}} markers are template placeholders.
class Yeehaw < Formula
  desc "Terminal ranch management for projects, servers, and Claude sessions"
  homepage "https://yeehaw.cool"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-aarch64-apple-darwin.tar.xz"
      sha256 "b8536b81e595b7f0d3ad0f3952c139baed6fef0530f1e7b685a39006a98facdb"
    end
    on_intel do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-x86_64-apple-darwin.tar.xz"
      sha256 "8a5323575c9699ef3a719b5284d28438cec5f84e6f94755264e02b4fb2c81220"
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
