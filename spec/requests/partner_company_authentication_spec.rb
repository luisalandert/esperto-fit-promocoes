require 'rails_helper'

describe 'Partner company validation' do
  it 'must be logged in to create' do
    post partner_companies_path, params: {}

    expect(response).to redirect_to(new_user_session_path)
  end
end
