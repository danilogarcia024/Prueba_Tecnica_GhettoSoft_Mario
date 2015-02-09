require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not create a User without Presence Variables" do
  	user = User.new(Cedula: '123456')
	
  	assert_not user.save
  end

  test "should not create a User with Cedula not number" do
  	user = User.new(Nombre: 'Danilo', Apellido: 'Garcia', Email: 'dgarcia@ghettosoft.co', Cedula: 'Cualquier Cosa')
  	
  	assert_not user.save
  end
end