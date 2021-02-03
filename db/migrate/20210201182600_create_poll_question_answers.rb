# frozen_string_literal: true

class CreatePollQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :poll_question_answers do |t|
      t.references :poll_questions
      t.references :answers
      t.references :user_polls
      t.text :content
      t.date :date
      t.timestamps
    end
  end
end
