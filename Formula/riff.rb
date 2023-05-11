class Riff < Formula
  desc "A tool that automatically provides external dependencies for software projects"
  homepage "https://github.com/DeterminateSystems/riff"
  version "1.0.3"
  revision 1
  head "https://github.com/DeterminateSystems/riff.git", branch: "main"
  license "MPL-2.0"

  on_arm do
    on_macos do
      url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-aarch64-darwin"
      sha256 "717072fb78263aed1309c983f679345aac11574ac54596a247fc74256fe1cf15"
    end
    on_linux do
      url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-aarch64-linux"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-x86_64-darwin"
      sha256 "83cc04e1e0f6f35b85efa79235b3fda2317243080bf0a3bfc5ea664a27d8b4c1"
    end
    on_linux do
      url "https://github.com/DeterminateSystems/riff/releases/download/v#{version}/riff-x86_64-linux"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b85"
    end
  end

  def install
    bin.install Dir["riff-*-*"].join("") => "riff"
  end

  test do
    output = shell_output("#{bin}/riff --version").chomp
    assert_match "riff #{version}", output
  end
end
