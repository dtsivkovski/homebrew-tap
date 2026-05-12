class Pteryx < Formula
  desc "Forensic file inspection tool for signatures and hash baselines"
  homepage "https://github.com/dtsivkovski/pteryx"
  url "https://github.com/dtsivkovski/pteryx/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "4807d45b78fcd214324bc4731f6051915c885f175f44a7b9d4117fd7412c7b4e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pteryx", "--help"
  end
end
