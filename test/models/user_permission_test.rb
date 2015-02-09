require 'test_helper'

class UserPermissionTest < ActiveSupport::TestCase
  test "should create a UserPermission" do
  	user_permission = UserPermission.new(user_id: 1, permision_id: 1)
  	assert user_permission.save
  end

  test "should not create a UserPermission without user" do
  	user_permission = UserPermission.new(permision_id: 1)
  	assert_not user_permission.save
  end

  test "should not create a UserPermission with user_id not number" do
    user_permission = UserPermission.new(user_id: 'Prueba', permision_id: 1)
    assert_not user_permission.save
  end

  test "should not create a UserPermission with permision_id not number" do
    user_permission = UserPermission.new(permision_id: 'Cualquier Cosa')
    assert_not user_permission.save
  end

  test "should not create a UserPermission without user_id and without permision_id" do
    user_permission = UserPermission.new
    assert_not user_permission.save
  end
end