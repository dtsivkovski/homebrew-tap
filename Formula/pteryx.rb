class Pteryx < Formula
  desc "Forensic file inspection tool for signatures and hash baselines"
  homepage "https://github.com/dtsivkovski/pteryx"
  url "https://github.com/dtsivkovski/pteryx/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "bc36bbfd6013855424a0929794eab1b7777ac1b98baf7bed868adfce600ebdcc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pteryx", "--help"
  end
end
