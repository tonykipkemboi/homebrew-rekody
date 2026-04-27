class Rekody < Formula
  desc "Open-source, privacy-first voice dictation for the terminal"
  homepage "https://github.com/rekody/rekody"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rekody/rekody/releases/download/v#{version}/rekody-#{version}-macos-aarch64.tar.gz"
      sha256 "02962eedb8d4e8214542dab3264c5a587161c458ac99e0d2accd5a8116e92071"
    else
      url "https://github.com/rekody/rekody/releases/download/v#{version}/rekody-#{version}-macos-x86_64.tar.gz"
      sha256 "03c6351678d6a69da8206d8102367348b8997e1fc12ee765512c40fc9e998339"
    end
  end

  def install
    bin.install "rekody"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rekody --version")
  end
end