class WorklogCli < Formula
  desc "Daily task and time tracking with simple Markdown-based notes"
  homepage "https://github.com/sdavisde/worklog-cli"
  version "0.3.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sdavisde/worklog-cli/releases/download/v0.3.0/worklog-cli-aarch64-apple-darwin.tar.gz"
      sha256 "b813e1ad7ed2bed2b0c66b14b6208e06d0ade1f09623da24ef449b072d2b48a4"
    else
      odie "worklog-cli only supports Apple Silicon (ARM64) Macs. Intel Mac support coming soon."
    end
  end

  on_linux do
    odie "worklog-cli does not currently support Linux. Please check the project homepage for updates."
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
