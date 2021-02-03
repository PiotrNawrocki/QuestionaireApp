# frozen_string_literal: true

class UserPoll < ApplicationRecord
  belongs_to :poll
  has_many :poll_questions, through: :poll
  has_many :poll_question_answers, through: :poll_questions
  has_many :questions, through: :poll_questions
end
