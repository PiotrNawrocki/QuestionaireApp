# frozen_string_literal: true

class PollQuestionAnswer < ApplicationRecord
  belongs_to :answer, optional: true
  belongs_to :poll_question

  def response
    answer || content.presence || date
  end
end
