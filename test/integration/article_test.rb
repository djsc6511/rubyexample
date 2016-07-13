require 'test_helper'

class ArticleTest < ActionDispatch::IntegrationTest
  test "can create an article" do
    get "/articles/new"
    assert_equal true, resp.keys.include?("title")
    assert_response :success

    post "/articles",
      params = { article: { title: "can create", text: "article successfully." } }

    # assert_response :redirect
    # follow_redirect!
    # assert_response :success


    # assert_equal "can create", params[:article][:title]
    assert_select "article", "title: can create"
  end
end
