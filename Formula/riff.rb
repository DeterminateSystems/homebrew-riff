class Riff < Formula
  desc "A tool that automatically provides external dependencies for software projects"
  homepage "https://github.com/DeterminateSystems/riff"
  version "1.0.3"
  head "https://github.com/DeterminateSystems/riff.git", branch: "main"
  url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-x86_64-darwin"
  sha256 "83cc04e1e0f6f35b85efa79235b3fda2317243080bf0a3bfc5ea664a27d8b4c1"
  license "MPL-2.0"

  def install
    bin.install "riff-x86_64-darwin" => "riff"
  end

  test do
    output = shell_output("#{bin}/riff --version").chomp
    assert_match "riff #{version}", output
  end
end
