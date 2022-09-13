class Riff < Formula
  desc "A tool that automatically provides external dependencies for software projects"
  homepage "https://github.com/DeterminateSystems/riff"
  version "1.0.1"
  head "https://github.com/DeterminateSystems/riff.git", branch: "main"
  url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-x86_64-darwin"
  sha256 "eb68fa3c7156523611ef45ab84d82ced3e578e6ec67f454cc7ca9549a99e4116"
  license "MPL-2.0"

  def install
    bin.install "riff-x86_64-darwin" => "riff"
  end

  test do
    output = shell_output("#{bin}/riff --version").chomp
    assert_match "riff #{version}", output
  end
end
