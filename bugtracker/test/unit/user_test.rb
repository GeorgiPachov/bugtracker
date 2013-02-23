require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "validations" do
    test_user = {:username => 'aaa'}
    assert !User.new(test_user).save
    
    test_user[:password] = 'pa'    
    assert !User.new(test_user).save

    test_user[:email] = 'testtesttest@test.testove'
    assert !User.new(test_user).save

    test_user[:password] = 'password'    
    test_user[:email] = 'testtesttest@test.com'
    test_user[:name] = 'Todor Afrikanski'

    assert User.new(test_user).save
  end
end
