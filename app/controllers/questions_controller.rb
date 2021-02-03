# frozen_string_literal: true

class QuestionsController < ApplicationController
  def new
    Question.new
  end

  def create
    Question.new(question_params)
  end

  private

  def question_params
    params.require(:questions).permit(%i[question_text question_type])
  end
end
