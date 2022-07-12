require 'rails_helper'

RSpec.describe User, type: :model do
  author = User.new(name: 'John Doe', photo: 'https://example.com/photo.jpg', bio: 'he was born in 1990 in England',
                    posts_counter: 15)

  before { author.save }

  it 'is valid with valid attributes' do
    expect(author).to be_valid
  end

  it 'is not valid without a name' do
    author.name = nil
    expect(author).to_not be_valid
  end

  it 'is not valid without a photo' do
    author.photo = nil
    expect(author).to_not be_valid
  end

  it 'is not valid without a bio' do
    author.bio = nil
    expect(author).to_not be_valid
  end

  it 'is not valid without a posts_counter' do
    author.posts_counter = nil
    expect(author).to_not be_valid
  end

  it 'is not valid with a posts_counter less than 0' do
    author.posts_counter = -1
    expect(author).to_not be_valid
  end

  it 'has last_three_posts with 3 posts' do
    expect(author.last_three_posts.count).to_not eq(3)
  end
end
