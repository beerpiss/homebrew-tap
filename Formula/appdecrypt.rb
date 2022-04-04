class Appdecrypt < Formula
    desc "A tool to decrypt iOS applications on macOS when SIP is enabled"
    homepage "https://github.com/paradiseduo/appdecrypt"
    url "https://github.com/paradiseduo/appdecrypt/archive/2.1.tar.gz"
    version "2.1"
    sha256 ""
    head "https://github.com/paradiseduo/appdecrypt.git", branch: "main"

    livecheck do
        url :stable
        regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    depends_on :xcode => :build
    depends_on :macos => :big_sur
    depends_on "ldid"

    def install
        system "swift", "build", "--disable-sandbox", "--configuration", "release"
        bin.install ".build/release/appdecrypt"
    end
end
