class Neatly < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/neatly"
  url "https://github.com/alpozaydin/neatly/releases/download/v0.5.0/neatly-macos-arm64.tar.gz"
  version "0.5.0"
  sha256 "de656105e44a3a628c6f591b0feb7e383bd1ee7ab755200639e09ec500866958"
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
