# frozen_string_literal: true

class Poll < ApplicationRecord
  has_many :poll_questions
  has_many :questions, through: :poll_questions
  has_many :user_polls
end
