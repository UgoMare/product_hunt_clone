# test/models/user_test.rb
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized fist name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name

    user = User.new(first_name: "RINGO", last_name: "STARR")
    assert_equal "Ringo Starr", user.full_name
  end
end
