class Graphlint < Formula
  desc "Static analysis tool for GraphQL"
  homepage "https://github.com/worksome/graphlint"
  url "https://github.com/worksome/graphlint/releases/download/v0.11.3/graphlint"
  sha256 "125e9c8ab0d58890d95f7fc0334661e61381dc0558b24512a40cb63bd1514d2a"
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
