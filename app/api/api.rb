module Api
  class Root < Grape::API
    GrapeDeviseTokenAuth.setup! do |config|
      config.authenticate_all = true
    end
    mount V1::Root
  end
end