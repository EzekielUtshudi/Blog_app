require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET #index' do
    before(:example) { get '/users/12/posts' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'returns text in response body' do
      expect(response.body).to include('This is a list of posts for a user.')
    end
  end

  describe 'GET #show' do
    before(:example) { get '/users/12/posts/2' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end

    it 'returns text in response body' do
      expect(response.body).to include('This is a post by a user.')
    end
  end
end
