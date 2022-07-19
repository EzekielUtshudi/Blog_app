# require 'rails_helper'
# RSpec.describe 'Testing user index page', type: :feature do
#   describe 'GET index' do
#     before(:each) do
#       @first_user = User.create(name: 'Tom', photo: 'Tom.png', bio: 'bio')
#     end
#     scenario 'shows the right content' do
#       visit users_path
#       sleep(5)
#       expect(page).to have_content('Number of posts')
#     end
#     feature 'User Index' do
#       background { visit user_path(User.first.id) }
#       scenario "I can see the user's username" do
#         expect(page).to have_content('Tom')
#       end
#       scenario "I can see the user's bio" do
#         expect(page).to have_content('bio')
#       end
#       scenario "I can see a button that lets me view all of a user's posts" do
#         click_link('See all posts')
#         expect(current_path).to eq user_posts_path(User.first.id)
#       end
#     end
#   end
# end
