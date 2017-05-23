require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@shelter = shelters(:valid)
	 	@animal = @shelter.animals.new({name: "Chase", animal_type: "Canine", shelter_id: 1, avitar: "http://lorempixel.com/200/200/animals/"})
	end
	 
	test 'valid animal' do
	 	assert @animal.valid?
	end

	test 'invalid without name' do
		@animal.name = nil
		refute @animal.valid?, 'saved animal without a name'
    	assert_not_nil @animal.errors[:name], 'no validation error for name present'
	end

  test 'invalid without animal_type' do
  	@animal.animal_type = nil
		refute @animal.valid?, 'saved user without a animal_type'
    	assert_not_nil @animal.errors[:name], 'no validation error for animal_type present'
  end

  test 'invalid without avitar' do
  	@animal.avitar = nil
		refute @animal.valid?, 'saved user without a avitar'
    	assert_not_nil @animal.errors[:avitar], 'no validation error for avitar present'
  	end

  # associations
  test '#shelter' do 
  	assert_not_nil @animal.shelter
  end

end
