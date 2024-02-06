require "test_helper"

class ChildTest < ActiveSupport::TestCase
  
  #relationships
  should have_many(:chores)
  should have_many(:tasks).through(:chores)

  # test "the truth" do
  #   assert true
  # end
end
