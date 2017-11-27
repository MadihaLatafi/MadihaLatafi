class QuestionsController < ApplicationController

  def ask
    @query = params[:query]
  end

  def answer
    @query = params[:query]
    if @query != ""
      if @query.upcase == @query
        @answer = "I can feel your motivation! #{answer}"
      elsif @query.downcase == "i am going to work right now!"
        @answer = "Cool!"
      elsif @query.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = ""
    end
    @answer
  end
end
