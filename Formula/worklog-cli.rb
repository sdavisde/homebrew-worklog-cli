class WorklogCli < Formula
  desc "Daily task and time tracking with simple Markdown-based notes"
  homepage "https://github.com/sdavisde/worklog-cli"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sdavisde/worklog-cli/releases/download/v0.3.2/worklog-cli-aarch64-apple-darwin.tar.gz"
      sha256 "03c4125c7e31575e1135d1952caaba2390945712623ba3cb083dc7c438edb142"
    else
      odie "worklog-cli currently only supports ARM-based Macs (Apple Silicon). Please check the project homepage for platform availability updates."
    end
  end

  on_linux do
    odie "worklog-cli currently does not support Linux. Please check the project homepage for platform availability updates."
  end

  def install
    bin.install "wl"
    pkgshare.install "templates"
  end

  def caveats
    <<~EOS
      Template files have been installed to:
        #{pkgshare}/templates

      To get started:
        wl --help
        wl open
    EOS
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
