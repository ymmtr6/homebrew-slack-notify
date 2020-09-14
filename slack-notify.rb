REPOSITORY_URL="https://github.com/ymmtr6/slack-notify".freeze
HOMEBREW_SLACK_NOTIFY_VERSION="0.0.4".freeze

class SlackNotify < Formula
  desc "Transfer stdin or argument using slack incomming webhook."
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_SLACK_NOTIFY_VERSION}.tar.gz"
  version HOMEBREW_SLACK_NOTIFY_VERSION
  sha256 "c297afbbd00546123b96b31b97439cc5ad31362beca8a6ee5913b1d738cc1be5"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_SLACK_NOTIFY_VERSION

  def install
    bin.install "bin/slack-notify"
  end

  def caveats
    msg = <<-EOS
    # slack-notify need Slack Incoming Webhook URL for working.
    # Please set environment variable for POST REQUEST. 
    # (~/.bashrc, ~/.bash_profile, ~/.zshrc or other)

    export SLACK_WEBHOOK="slack incomming webhook url"

    # please check the url to see for details. ( slack official page )
    # https://slack.com/intl/ja-jp/help/articles/115005265063-Slack-%E3%81%A7%E3%81%AE-Incoming-Webhook-%E3%81%AE%E5%88%A9%E7%94%A8

    # USAGE: stdin
    $ ls -la | slack-notify

    # USAGE: args
    $ slack-notify "this is test message"

    EOS
  end

  test do
    system "false"
  end

end
