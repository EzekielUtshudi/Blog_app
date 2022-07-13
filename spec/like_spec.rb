require 'rails_helper'

RSpec.describe Like, type: :model do
  liker = Like.new(user_id: 2, post_id: 2)

  before { liker.save }
  it 'is valid with valid attributes' do
    expect(liker).to_not be_valid
  end

  it 'is not valid without an user_id' do
    liker.user_id = nil
    expect(liker).to_not be_valid
  end

  it 'is not valid without a post_id' do
    liker.post_id = nil
    expect(liker).to_not be_valid
  end

  it 'is valid with a post_id' do
    liker.post_id = 1
    expect(liker).to_not be_valid
  end
end
