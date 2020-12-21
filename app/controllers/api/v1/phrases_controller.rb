# frozen_string_literal: true

module Api
  module V1
    class PhrasesController < Api::V1::ApplicationController
      def index
        render json: { phrases: Phrase.all }
      end
    end
  end
end
