require "test_helper"
require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  should have_many(:chores)
  should have_many(:children).through(:chores)

  should validate_presence_of(:name)
  
  should validate_numericality_of(:points).is_greater_than(0)

  context 'scopes' do
    setup do
      @task1 = Task.create!(name: 'Wash Dishes', points: 5, active: true)
      @task2 = Task.create!(name: 'Clean Room', points: 10, active: false)
      @task3 = Task.create!(name: 'Take out Trash', points: 3, active: true)
    end

    should 'order tasks alphabetically by name' do
      assert_equal [@task1, @task2, @task3].sort_by(&:name), Task.order_by_name
    end

    should 'have a scope that only selects active tasks' do
      assert_equal [@task1, @task3], Task.active
    end
  end
end

