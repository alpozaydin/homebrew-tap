class Neatly < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/neatly"
  url "https://github.com/alpozaydin/neatly/releases/download/v0.6.2/neatly-macos-arm64.tar.gz"
  version "0.6.2"
  sha256 "2de3aa14c15199e9ad38fec48219883d96828d6f0f8dde16148f1ce6b55c7a9e"
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
