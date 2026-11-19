class Neatly < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/neatly"
  url "https://github.com/alpozaydin/neatly/releases/download/v0.6.4/neatly-macos-arm64.tar.gz"
  version "0.6.4"
  sha256 "87b697da4b01eca1dc7d623b540d55b30cd38758f59547c3e958576104c956b0"
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
