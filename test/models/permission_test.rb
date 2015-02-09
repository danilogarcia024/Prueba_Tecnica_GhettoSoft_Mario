require 'test_helper'

class PermissionTest < ActiveSupport::TestCase
  test "should not create a Permission without nombre" do
  	permission = Permission.new(descripcion: 'Otro Ejemplo')
  	
  	assert_not permission.save
  end

  test "should create a Permission" do
  	permission = Permission.new(nombre: 'Ejemplo', descripcion: 'Otro Ejemplo')
  	
  	assert permission.save
  end

  test "should not create a Permission with a blank nombre" do
  	permission = Permission.new(nombre: '', descripcion: 'Otro Ejemplo')
  	
  	assert_not permission.save
  end
end