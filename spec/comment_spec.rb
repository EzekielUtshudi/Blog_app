require 'rails_helper'

RSpec.describe Comment, type: :model do
  commenter = Comment.new(user_id: 2, post_id: 3, text: 'I like your new feature')

  before { commenter.save }
  it 'is valid with valid attributes' do
    expect(commenter).to_not be_valid
  end

  it 'is not valid without an user_id' do
    commenter.user_id = nil
    expect(commenter).to_not be_valid
  end

  it 'is not valid without a post_id' do
    commenter.post_id = nil
    expect(commenter).to_not be_valid
  end

  it 'is not valid without a text' do
    commenter.text = nil
    expect(commenter).to_not be_valid
  end
end
