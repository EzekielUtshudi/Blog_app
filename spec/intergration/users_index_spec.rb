# require 'rails_helper'

# RSpec.describe 'Testing user index page', type: :feature do
#   describe 'GET index' do
#     before(:each) do
#       @first_user = User.create(name: 'Tom', photo: 'Tom.png', bio: 'Developer.')
#       @second_user = User.create(name: 'Jerry', photo: 'Jerry.png', bio: 'Web Developer.')
#       @third_user = User.create(name: 'Mina', photo: 'Mina.jpg', bio: 'Frontend Developer.')
#     end

#     scenario 'shows the right content' do
#       visit users_path
#       sleep(5)
#       expect(page).to have_content('All users')
#     end

#     feature 'User Index' do
#       background { visit users_path }
#       scenario 'See all usernames' do
#         expect(page).to have_content('Tom')
#         expect(page).to have_content('Jerry')
#         expect(page).to have_content('Mina')
#       end

#       scenario 'See the number of posts each user has written' do
#         expect(page).to have_content('Number of posts: 0')
#       end

#       # scenario 'See profile picture for each user' do
#       #     expect(page.first('img')['src']).to have_content 'Tom.png'
#       # end

#       # scenario "When I click on a user, I am redirected to that user's show page" do
#       #     click_link 'Tom', match: :first
#       #     expect(current_path).to eq user_path(User.first.id)
#       # end
#     end
#   end
# end
