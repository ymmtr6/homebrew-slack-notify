REPOSITORY_URL="https://github.com/ymmtr6/slack-notify".freeze
HOMEBREW_SLACK_NOTIFY_VERSION="0.0.1".freeze

class SlackNotify < Formula
  desc "transfer stdin or argument using slack incomming webhook."
  homepage "https://github.com/ymmtr6/slack-notify"
  license "MIT"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_SLACK_NOTIFY_VERSION}.tar.gz"
  sha256 "07ddd3fd1d0b0f10d6c2556239b5951fa78bcf9ef772841d1d5686d57b04ff3b"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_SLACK_NOTIFY_VERSION

  # depends_on "cmake" => :build

  def install
    bin.install "bin/slack-notify"
  end

  test do
    system "false"
  end
end
