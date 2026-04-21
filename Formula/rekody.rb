class Rekody < Formula
  desc "Open-source, privacy-first voice dictation for the terminal"
  homepage "https://github.com/tonykipkemboi/rekody"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonykipkemboi/rekody/releases/download/v#{version}/rekody-#{version}-macos-aarch64.tar.gz"
      sha256 "90200682285dff9310ce83946b23bc3f2efe418e1cb6cabda301f8225361cc1d"
    else
      url "https://github.com/tonykipkemboi/rekody/releases/download/v#{version}/rekody-#{version}-macos-x86_64.tar.gz"
      sha256 "74b1ecdf5e135ce669338bda22e54003e02d2346f377661ed8526f9a77c3cd83"
    end
  end

  def install
    bin.install "rekody"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rekody --version")
  end
end
