require "formula"

REPOSITORY_URL="https://github.com/ymmtr6/slack-notify".freeze
HOMEBREW_SLACK_NOTIFY_VERSION="0.0.2".freeze

class SlackNotify < Formula
  desc "transfer stdin or argument using slack incomming webhook."
  homepage REPOSITORY_URL
  version HOMEBREW_SLACK_NOTIFY_VERSION
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_SLACK_NOTIFY_VERSION}.tar.gz"
  sha256 "b96d14b5a311275a53abb27efdebb35522cc596a68d24029e1a6665c0d3025bc"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_SLACK_NOTIFY_VERSION

  def install
    bin.install "bin/slack-notify"
  end

  def caveats
    msg = <<-EOF.undent
    # slack-notify need Slack Incoming Webhook URL for working.
    # Please set environment variable for POST REQUEST.
    # (~/.bashrc, ~/.bash_profile, ~/.zshrc or other)

    export SLACK_WEBHOOK="slack incomming webhook url"
EOF
  end

  test do
    system "false"
  end

end
