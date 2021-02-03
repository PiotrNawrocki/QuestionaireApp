# frozen_string_literal: true

class PollQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :poll
  has_many :poll_question_answers
  has_many :answers, through: :poll_question_answers

end
