class Xrop < Formula
  desc "ROP Gadget finder "
  homepage "https://github.com/acama/xrop"
  license "MIT"
  version "1.2"

  if Hardware::CPU.arm?
    url "https://github.com/acama/homebrew-xrop/releases/download/v1.2/xrop-aarch64-darwin.tgz"
    sha256 "991765877cff3ea19a5073a0ec443d1da36bb5e9ea40b5daf4d8f60f46ddb5bc"
  else
    url ""
    sha256 ""
  end

  def install
    (prefix/"./").install Dir["./*"]
    Dir.glob(prefix/"xrop") {|file| bin.install_symlink file}
  end
end
