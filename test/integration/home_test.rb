require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest

  test "loads correctly" do
    visit "/"
    # save_and_open_screenshot
    # save_and_open_page
    assert_equal 200, page.status_code
    assert page.has_content?("Products")

    assert page.has_selector?('.product', count: Product.count)
  end

end
