# frozen_string_literal: true

module Api
  module V1
    class PhrasesController < Api::V1::ApplicationController
      skip_before_action :verify_authenticity_token

      def index
        render json: { response: :ok, phrases: @user.phrases.approved }
      end

      def create
        phrase = Phrase.new(user: @user, quotation: params[:quotation])
        if phrase.save
          render json: { response: :ok }
        else
          render json: { response: :unprocessable_entity, msg: phrase.errors }
        end
      end
    end
  end
end
