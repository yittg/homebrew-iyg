class Ving < Formula
  desc "🐸 A ping utility with nice output, with powerful traceroute and port probe."
  homepage "https://github.com/yittg/ving"
  url "https://github.com/yittg/ving/archive/v0.4.1.tar.gz"
  sha256 "907cee3ec9d80d42e67c2fd071c757ee683c502c899546232be42735667ad0db"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = var/"ving"
    system "go", "build", "-o", bin/"ving"
  end

  test do
      assert_match "version: 0.4.1", shell_output("#{bin}/ving --version", 0)
  end
end
