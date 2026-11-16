class Neatly < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/neatly"
  url "https://github.com/alpozaydin/neatly/releases/download/v0.6.3/neatly-macos-arm64.tar.gz"
  version "0.6.3"
  sha256 "a2311d7434c7d83ec1b1c2e37804a36ecaf3d020c41c54f21e133e5aa2292754"
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
