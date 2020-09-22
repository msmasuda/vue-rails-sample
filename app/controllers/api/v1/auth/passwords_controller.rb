class Api::V1::Auth::PasswordsController < DeviseTokenAuth::PasswordsController
    protect_from_forgery with: :null_session
    private  
        def password_update_params
        params.permit(:password, :password_confirmation)
        end
  end