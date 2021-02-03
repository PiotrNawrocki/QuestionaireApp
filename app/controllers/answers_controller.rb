# frozen_string_literal: true

class AnswersController < ApplicationController
  def new
    Answer.new
  end

  def create
    Answer.new(answer_params)
  end

  private

  def answer_params
    params.require(:answers).permit(%i[answer_content])
  end
end
