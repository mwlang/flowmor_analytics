require 'test_helper'

class JavascriptsTest < ActionDispatch::IntegrationTest
  test "/" do
    get "/"
    assert_response :success
    assert_select "h1", "Static Page"
    # assert response =~ /application\.js/
  end
end
