class Api::V1::Auth::SessionsController < DeviseTokenAuth::SessionsController
    include DeviseTokenAuth::Concerns::SetUserByToken
    protect_from_forgery with: :null_session
    private
    def sign_in_params
      params.permit(:email, :password)
    end
  
    def sign_out_params
      params.permit(:email)
    end
  end
  