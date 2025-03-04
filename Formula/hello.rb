class Hello < Formula
  desc "A simple 'hello world' program"
  homepage "https://github.com/<your-username>/hello-world-cli"
  url "https://github.com/ianderthal/hello-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a331b336eeb9972338b2e938cb6f474853cab8c8cec706f40a223826ab06bff4"
  license "MIT"

  def install
    bin.install "dist/hello-macos"
  end

  test do
    assert_equal "Hello World!", shell_output("#{bin}/hello-macos").strip
    assert_equal "Hello John!", shell_output("#{bin}/hello-macos John").strip
  end
end
