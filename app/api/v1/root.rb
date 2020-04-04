module V1
  class Root < Grape::API
    version 'v1', using: :path
    format :json

    auth :grape_devise_token_auth, resource_class: :user

    helpers GrapeDeviseTokenAuth::AuthHelpers

    desc 'GET /api/v1/test'
    get 'test' do
      authenticate_user!

      {
        message: 'test',
        current_user_uid: current_user.uid,
        authenticated?: authenticated?,
      }
    end
  end
end