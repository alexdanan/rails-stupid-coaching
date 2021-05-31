class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if params[:answer].present?
      @question
      if params[:answer].include? '?'
        @coach = 'Silly question, get dressed and go to work!'
      elsif params[:answer] == 'I am going to work'
        @coach = 'Great!'
      else
        @coach = "I don't care, get dressed and go to work!"
      end
    end
  end
end
