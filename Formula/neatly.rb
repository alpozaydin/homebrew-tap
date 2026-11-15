class Neatly < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/neatly"
  url "https://github.com/alpozaydin/neatly/releases/download/v0.5.2/neatly-macos-arm64.tar.gz"
  version "0.5.2"
  sha256 "a688c0bead3af044d48b4cfe08b6d7085bd814b71f4a0f5e82a071a4bb51609f"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "neatly"
  end

  def caveats
    <<~EOS
      Install neatly.app (Applications + menu bar) and start it — also after every upgrade:
        neatly service install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neatly --version")
  end
end
