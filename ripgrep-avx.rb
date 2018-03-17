class RipgrepBin < Formula
  version '0.8.1'
  desc "Recursively search directories for a regex pattern. AVX Enabled"
  homepage "https://github.com/BurntSushi/ripgrep"

  if OS.mac?
      url "https://dl.bintray.com/andyfangdz/homebrew-mac/ripgrep-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "097465ce204833e20f3b26fd8c69adae3feaae877f02c9a77c8334c62f5ddc20"
  # elsif OS.linux?
  #     url "https://github.com/BurntSushi/ripgrep/releases/download/#{version}/ripgrep-#{version}-x86_64-unknown-linux-musl.tar.gz"
  #     sha256 "08b1aa1440a23a88c94cff41a860340ecf38e9108817aff30ff778c00c63eb76"
  end

  conflicts_with "ripgrep"

  def install
    bin.install "rg"
    man1.install "doc/rg.1"

    bash_completion.install "complete/rg.bash"
    fish_completion.install "complete/rg.fish"
    zsh_completion.install "complete/_rg"
  end
end
