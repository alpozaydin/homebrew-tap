class Neatly < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/neatly"
  url "https://github.com/alpozaydin/neatly/releases/download/v0.2.0/neatly-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "066a2b0f5602d6ad08adddd77a13d89be593a5b46d693072bf95f1d9c0b35a2e"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "neatly"
  end

  def caveats
    <<~EOS
      Start watching ~/Downloads (also after every upgrade):
        neatly service install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neatly --version")
  end
end
