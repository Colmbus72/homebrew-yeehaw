# This formula is rewritten by the yeehaw-publish trail on every release.
# Values between the {{mustache}} markers are template placeholders.
class Yeehaw < Formula
  desc "Terminal ranch management for projects, servers, and Claude sessions"
  homepage "https://yeehaw.cool"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-aarch64-apple-darwin.tar.xz"
      sha256 "b50257dd89aa2f7436e4abe2701ad845ec72a484b30010d62eb7d2838f488a91"
    end
    on_intel do
      url "https://github.com/Colmbus72/yeehaw/releases/download/v#{version}/yeehaw-x86_64-apple-darwin.tar.xz"
      sha256 "7d8220204bff3201946cf76d4212de729498c97e81fe85a76e67575c1fe0f604"
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
