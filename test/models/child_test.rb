require "test_helper"

class ChildTest < ActiveSupport::TestCase

  #relationships
  should have_many(:chores)
  should have_many(:tasks).through(:chores)


  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)

  # test "the truth" do
  #   assert true
  # end
end
