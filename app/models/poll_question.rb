# frozen_string_literal: true

class PollQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :poll
  has_one :poll_question_answer
  has_many :answers, through: :question
end
