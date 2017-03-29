require 'rails_helper'

RSpec.describe Entry, type: :model do



  it "validates uniqueness of name" do
    FactoryGirl.create(:entry, name: 'unique_name')
    duplicate_name = FactoryGirl.build(:entry, name: 'unique_name')
    expect(duplicate_name).to be_invalid
    expect(duplicate_name.errors[:name]).to eq ['has already been taken']
  end

  it "validates uniqueness of name with message" do
    no_name = FactoryGirl.build(:entry)
    expect(no_name).to be_invalid
    expect(no_name.errors[:name]).to eq ['can\'t be blank']
  end





end
