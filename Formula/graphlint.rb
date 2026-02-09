class Graphlint < Formula
  desc "Static analysis tool for GraphQL"
  homepage "https://github.com/worksome/graphlint"
  url "https://github.com/worksome/graphlint/releases/download/v0.12.0/graphlint"
  sha256 "c96db6d3fedebf26b0053313cc731c2653e378bf9ba9baeae6c4e8e268481683"
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
