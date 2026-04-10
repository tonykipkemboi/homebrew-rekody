class Chamgei < Formula
  desc "Open-source, privacy-first voice dictation for the terminal"
  homepage "https://github.com/tonykipkemboi/chamgei"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonykipkemboi/chamgei/releases/download/v#{version}/chamgei-#{version}-macos-aarch64.tar.gz"
      sha256 "8d4aae8be991673ca1be168ae149d4be851729b74fe152923b55e4bd45be6330"
    else
      url "https://github.com/tonykipkemboi/chamgei/releases/download/v#{version}/chamgei-#{version}-macos-x86_64.tar.gz"
      sha256 "b25e80031d17ec0c45e3061e0a109bbac1071c065d9c35c6500e43cb232b61f4"
    end
  end

  def install
    bin.install "chamgei"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chamgei --version")
  end
end
