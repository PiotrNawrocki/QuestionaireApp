# frozen_string_literal: true

class QuestionAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :answer
end
