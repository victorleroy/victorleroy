class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(query)
    if query.downcase == "i am going to work right now!"
      'Good.'
    elsif query.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(query)
    answer = coach_answer(query)
    if answer != ""
      if query.upcase == query
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end

end

