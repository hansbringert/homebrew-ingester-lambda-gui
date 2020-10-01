# comment
# frozen_string_literal: true

# top-level class comment
class IngesterLambdaGui < Formula
  desc "Ingester Lambda GUI"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/open-content-artifacts/ingester-lambda-gui/ingester-lambda-gui-9abb3131eb516eec2cb16bdf1cf13423c4c0f042.tar.gz"
  sha256 "db7ac99c1c0b7c775c1f95211aadf5b3acde8b84399c13f39a66beb792e5689d"

  def install
    bin.install "ingester-lambda-gui"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ingester-lambda-gui"
  end
end
