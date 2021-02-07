# frozen_string_literal: true

class Question < ApplicationRecord
  enum question_type: { text: 'text', date: 'date', choice: 'choice' }
  has_many :question_answers
  has_many :answers, through: :question_answers
end
