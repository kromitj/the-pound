require "test_helper"

describe ShelterAdmin do
  let(:shelter_admin) { ShelterAdmin.new }

  it "must be valid" do
    value(shelter_admin).must_be :valid?
  end
end
