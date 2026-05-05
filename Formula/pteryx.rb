class Pteryx < Formula
  desc "Forensic file inspection tool for signatures and hash baselines"
  homepage "https://github.com/dtsivkovski/pteryx"
  url "https://github.com/dtsivkovski/pteryx/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0afab612210d7c3e5ee98e93f0a652be5bd4838b98a62834990864b20f333f1a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pteryx", "--help"
  end
end
