class QuestionsController < ApplicationController
  def ask
    # @question = params[:question]
    # @answer = answer
    # render "views/questions/ask.html.erb"
  end

  def answer
    @question = params[:question]
    if @question.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!."
    elsif @question == "I'm going to work"
      @coach_answer = "Great!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
    # render "views/questions/answer.html.erb"
  end
end
