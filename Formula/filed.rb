class Filed < Formula
  desc "Suggests short names and folders for your downloads, on-device"
  homepage "https://github.com/alpozaydin/filed"
  url "https://github.com/alpozaydin/filed/releases/download/v0.1.0/filed-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "a8daa4a664558f5535694d2367192885b74120625b75c16c20682f64ef9024de"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "filed"
  end

  def caveats
    <<~EOS
      Start watching ~/Downloads (also after every upgrade):
        filed service install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filed --version")
  end
end
