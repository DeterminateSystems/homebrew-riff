class Riff < Formula
  desc "A tool that automatically provides external dependencies for software projects"
  homepage "https://github.com/DeterminateSystems/riff"
  version "1.0.0"
  head "https://github.com/DeterminateSystems/riff.git", branch: "main"
  url "https://github.com/DeterminateSystems/riff/releases/download/v1.0.0/riff-x86_64-darwin"
  sha256 "91f0ec51fc99f4a34240d54def73b2066d973fee48d8579bc775be7d63284bd1"
  license "MPL-2.0"

  def install
    bin.install "riff-x86_64-darwin" => "riff"
  end

  test do
    output = shell_output("#{bin}/riff --version").chomp
    assert_match "riff 1.0.0", output
  end
end
