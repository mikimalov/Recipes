require 'rails_helper'

RSpec.describe 'Users' do
  it "creates a User and redirects to the User's page" do
    get '/login'

    post_params = {
      params: {
        user: {
          full_name: 'Miki Malov',
          first_name: 'Miki',
          last_name: 'Malov',
          email: 'mikimalov123@gmail.com',
          password: 'mikimiki',
          password_confirmation: 'mikimiki'
        }
      }
    }

    post '/users', post_params

    expect(session[:user_id]).not_to be_nil

    follow_redirect!

    expect(response.body).to include('Miki Malov')
    expect(response.body).to include('Miki')
    expect(response.body).to include('mikimalov123@gmail.com')
  end

  it 'renders new, when user params are not valid' do
    get '/login'

    post_params = {
      params: {
        user: {
          full_name: '',
          first_name: '',
          last_name: '',
          email: '',
          password: '',
          password_confirmation: ''
        }
      }
    }

    post '/users', post_params

    expect(session[:user_id]).to be_nil
    expect(response.body).not_to include('Miki Malov')
  end
end