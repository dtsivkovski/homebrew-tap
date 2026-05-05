class Pteryx < Formula
  desc "Forensic file inspection tool for signatures and hash baselines"
  homepage "https://github.com/dtsivkovski/pteryx"
  url "https://github.com/dtsivkovski/pteryx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "39bf8544fd3342152b852c2babca59c2c97932905190cc0037097969de901f77"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pteryx", "--help"
  end
end
