class Riff < Formula
  desc "A tool that automatically provides external dependencies1 for software projects"
  homepage "https://github.com/DeterminateSystems/riff"
  head "https://github.com/DeterminateSystems/riff.git", branch: "main"
  url "https://github.com/DeterminateSystems/riff/archive/v0.1.0.tar.gz"
  sha256 "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
  license "MPL-2.0"

  test do
    system "#{bin}/riff --help"
  end
end
