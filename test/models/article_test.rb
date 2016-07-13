require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "article 생성" do
    article = Article.new({
      title: "sample10",
      text: "sample10"
      })
    article.save
    assert_equal 'sample10',article.title
  end
end
