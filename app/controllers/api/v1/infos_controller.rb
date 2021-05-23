class Api::V1::InfosController < ApplicationController
    def index
        user = User.find_by(uid: params['uid'])
        render json: { status: 'SUCCESS', message: 'Loaded user', data: user }
    end
end