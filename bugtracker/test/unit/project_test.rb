require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "validations" do
    testproject = {:name => ''}
    assert !Project.new(testproject).save

    testproject = {:name => 't'}
    assert !Project.new(testproject).save

    testproject = {:name => 'TestProjectN7'}
    assert Project.new(testproject).save
  end
end