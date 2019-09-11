require 'rails_helper'

describe WelcomeController, type: :controller do
  describe 'GET index' do
    context 'when a user does NOT have a user account' do
      it 'redirects user to the user registration page' do
        get :index
        expect(response).to redirect_to new_user_registration_path
      end
    end

    context 'when a registered user visits' do
      it 'renders the welcome#index page' do
        get :index
        expect(response).to render_template("index")
      end
    end

  end
end
