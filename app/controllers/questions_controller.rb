# Doing all the asking business
class QuestionsController < ApplicationController
  def ask; end

  def answers
    @questions = params[:answers]
    @answers = if @questions == 'I am going to work'
                 'Great!'
               elsif @questions.ends_with? '?'
                 'Silly question, get dressed and go to work!'
               else
                 "I don't care, get dressed and go to work!'"
               end
  end
end
