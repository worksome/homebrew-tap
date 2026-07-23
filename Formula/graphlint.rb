class Graphlint < Formula
  desc "Static analysis tool for GraphQL"
  homepage "https://github.com/worksome/graphlint"
  url "https://github.com/worksome/graphlint/releases/download/v0.13.0/graphlint"
  sha256 "e047584a1c94d9c53c212aef138d9c679c9a8546c8b93636321a955694a80503"
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
