require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'renders the index.html.erb template' do
      sign_in create :user
      get :index
      expect(response).to render_template 'index'
    end
  end
end
