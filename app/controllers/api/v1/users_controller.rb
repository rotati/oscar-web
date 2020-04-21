module Api
  module V1
    class UsersController < Api::V1::BaseApiController
      before_action :authenticate_user!

      def index
        render json: User.all
      end

      def show
        user = User.find(params[:id])
        render json: user
      end

    end
  end
end
