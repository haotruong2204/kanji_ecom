require "rails_helper"

RSpec.describe Api::V1::Admins::SessionsController, type: :controller do
  before do
    @request.env["devise.mapping"] = Devise.mappings[:admin]
  end

  describe 'POST #create' do
    let(:admin) { create(:admin) }

    context 'with valid credentials' do
      before do
        allow(Warden::JWTAuth::UserEncoder).to receive_message_chain(:new, :call).and_return(['token'])
        post :create, params: { admin: { email: admin.email, password: admin.password } }
      end

      it 'returns a success response' do
        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body)['data']['access_token']).to eq('token')
      end
    end

    context 'with invalid credentials' do
      before do
        post :create, params: { admin: { email: admin.email, password: 'wrong_password' } }
      end

      it 'returns an unauthorized response' do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
