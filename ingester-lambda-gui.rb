# comment
# frozen_string_literal: true

# top-level class comment
class IngesterLambdaGui < Formula
  desc "Ingester Lambda GUI"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/open-content-artifacts/ingester-lambda-gui/ingester-lambda-gui-ac7fa66.tar.gz"
  sha256 "9ec36653c375cff975027460dfd525be42e6adc74bae13e580f30131a43c9497"

  def install
    bin.install "build/darwin/ingester-lambda-gui"
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
