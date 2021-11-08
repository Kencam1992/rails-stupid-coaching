class QuestionsController < ApplicationController
  def ask
  end

  def answer
    ask_question = params['ask']
    @answer = if ask_question == 'I am going to work'
                'Great!'
              elsif ask_question[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
