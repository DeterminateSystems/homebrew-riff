class Riff < Formula
  desc "A tool that automatically provides external dependencies for software projects"
  homepage "https://github.com/DeterminateSystems/riff"
  version "1.0.2"
  head "https://github.com/DeterminateSystems/riff.git", branch: "main"
  url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-x86_64-darwin"
  sha256 "fd60f7ba00c7c9a302f2941d6c95c3ee815f6e4552c5ca695ed88466e19a3cce"
  license "MPL-2.0"

  def install
    bin.install "riff-x86_64-darwin" => "riff"
  end

  test do
    output = shell_output("#{bin}/riff --version").chomp
    assert_match "riff #{version}", output
  end
end
