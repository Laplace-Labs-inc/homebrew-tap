class Laplace < Formula
  desc "Deterministic concurrency verification CLI"
  homepage "https://laplace-labs.com"
  version "0.1.0-alpha-1-rc.4"
  license "Elastic-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Laplace-Labs-inc/laplace/releases/download/v0.1.0-alpha-1-rc.4/laplace-cli-aarch64-apple-darwin.tar.xz"
      sha256 "617761cb8c6feb7a1a07da60d82a20bd7c4e0c63a0befc16ff5684ce940962f6"
    end
    on_intel do
      url "https://github.com/Laplace-Labs-inc/laplace/releases/download/v0.1.0-alpha-1-rc.4/laplace-cli-x86_64-apple-darwin.tar.xz"
      sha256 "19f579ba8e8f967f918658b280894e8bfb3de01d0d8b22997cfb1e4f0806f5b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Laplace-Labs-inc/laplace/releases/download/v0.1.0-alpha-1-rc.4/laplace-cli-aarch64-unknown-linux-musl.tar.xz"
      sha256 "9a0bad90e6d8751c4b3d23c5527768679187076149449221eaf0f887a0212255"
    end
    on_intel do
      url "https://github.com/Laplace-Labs-inc/laplace/releases/download/v0.1.0-alpha-1-rc.4/laplace-cli-x86_64-unknown-linux-musl.tar.xz"
      sha256 "beaef5c6d0a37fb75e0fce79dc72f061610e3426c88b39023b713f8e53d94730"
    end
  end

  def install
    bin.install "laplace"
  end

  test do
    system "#{bin}/laplace", "--version"
  end
end
