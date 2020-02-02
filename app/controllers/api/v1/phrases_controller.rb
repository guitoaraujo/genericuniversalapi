class Api::V1::PhrasesController < Api::V1::ApplicationController
  def index
    render json: { phrases: Phrase.all }
  end
end
