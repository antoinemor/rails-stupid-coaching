class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer_enhanced(your_message)
    if your_message.downcase == "i am going to work right now!"
      return "It's good son"
    elsif your_message.upcase == your_message && your_message[your_message.length - 1] == "?"
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message.upcase == your_message
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif your_message[your_message.length - 1] == "?"
      return "Silly question, get dressed and go to work!"
    else return "I don't care, get dressed and go to work!"
    end
  end
end

