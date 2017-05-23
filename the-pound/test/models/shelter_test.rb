require 'test_helper'

class ShelterTest < ActiveSupport::TestCase
  def setup 
  	@shelter = shelters(:valid)
  end

  test 'valid shelter' do 
  	assert @shelter.valid?, 'Refused to save a valid record'
  end

  test 'invalid without a name' do
  	@shelter.name = nil
  	refute @shelter.valid?, 'saved shelter without a name'
    assert_not_nil @shelter.errors[:name], 'no validation error for name present'
  end

  test 'invalid without an adress' do
  	@shelter.address = nil
  	refute @shelter.valid?, 'saved shelter without an adress'
    assert_not_nil @shelter.errors[:address], 'no validation error for name present'
  end

  test 'invalid without a phone_number' do
  	@shelter.phone_number = nil
  	refute @shelter.valid?, 'saved shelter without a phone_number'
    assert_not_nil @shelter.errors[:phone_number], 'no validation error for phone_number present'
  end  

  # associations
	test '#animals' do
		assert_equal 2, @shelter.animals.size
	end
end
