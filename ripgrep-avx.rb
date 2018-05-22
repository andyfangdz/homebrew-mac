class RipgrepAvx < Formula
  version 'a383d5c'
  desc "Recursively search directories for a regex pattern. AVX Enabled"
  homepage "https://github.com/BurntSushi/ripgrep"

  if OS.mac?
      url "https://bintray.com/andyfangdz/homebrew-mac/download_file?file_path=ripgrep-a383d5c-x86_64-apple-darwin.tar.gz"
      sha256 "817f68dd140a748d7a2bc39c77419d00749f81aa672edc9bbe672f3c6ecedb3f"
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
