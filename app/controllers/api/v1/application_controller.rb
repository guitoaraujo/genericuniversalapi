# frozen_string_literal: true

module Api
  module V1
    class ApplicationController < ActionController::Base
      before_action :authorize_user!

      private

      def authorize_user!
        @user = User.find_by(email: params[:email])
        render json: { response: :unauthorized } if @user.blank? || !@user.valid_password?(params[:password])
      end
    end
  end
end
