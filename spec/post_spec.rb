require 'rails_helper'

RSpec.describe Post, type: :model do
  poster = Post.new(user_id: 1, title: 'My first post', text: 'This is my first post', comments_counter: 12,
                    likes_counter: 9)

  before { poster.save }
  it 'is valid with valid attributes' do
    expect(poster).to_not be_valid
  end

  it 'is not valid without an user_id' do
    poster.user_id = nil
    expect(poster).to_not be_valid
  end

  it 'is not valid without a title' do
    poster.title = nil
    expect(poster).to_not be_valid
  end

  it 'is not valid without a text' do
    poster.text = nil
    expect(poster).to_not be_valid
  end

  it 'is not valid without a comments_counter' do
    poster.comments_counter = nil
    expect(poster).to_not be_valid
  end

  it 'is not valid without a likes_counter' do
    poster.likes_counter = nil
    expect(poster).to_not be_valid
  end

  it 'is not valid with a comments_counter less than 0' do
    poster.comments_counter = -1
    expect(poster).to_not be_valid
  end

  it 'is not valid with a likes_counter less than 0' do
    poster.likes_counter = -1
    expect(poster).to_not be_valid
  end
end
