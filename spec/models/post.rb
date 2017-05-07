require 'rails_helper'

describe Post do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:post)).to be_valid
  end

  it 'is invalid without a title' do
    expect(FactoryGirl.build(:post, title: nil)).to raise_error
  end

  it 'title must not exceed 140 characters'
  it 'must contain a body'
end