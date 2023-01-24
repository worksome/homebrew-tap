class Graphlint < Formula
  desc "Static analysis tool for GraphQL"
  homepage "https://github.com/worksome/graphlint"
  url "https://github.com/worksome/graphlint/releases/download/v0.7.0/graphlint"
  sha256 "e3406187ad8b22108f42b9f1f409641047be9df7f5f3cafe6cf88004eaec7c24"
  license "MIT"

  depends_on "php"

  def install
    bin.install "graphlint"
  end

  test do
    assert_match "Unable to find a \"graphlint.php\" configuration file",
                 shell_output("#{bin}/graphlint test.graphql", 1)
  end
end
