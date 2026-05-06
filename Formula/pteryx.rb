class Pteryx < Formula
  desc "Forensic file inspection tool for signatures and hash baselines"
  homepage "https://github.com/dtsivkovski/pteryx"
  url "https://github.com/dtsivkovski/pteryx/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "f7cbd27eb9c9af0ebf95ceaf452efcc6d1b52715c2b8c65fb870ec3886bbbb07"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pteryx", "--help"
  end
end
