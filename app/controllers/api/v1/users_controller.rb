class Api::V1::UsersController < ActionController::Base
    def info
        user = User.where({ :token: params[:token])
        render json: { status: 'SUCCESS', message: 'Loaded Users.info', data: user }
    end
end