# frozen_string_literal: true

class Answer < ApplicationRecord
  has_many :question_answers
  has_many :questions, through: :question_answers
  has_many :poll_questions, through: :poll_question_answers
end
