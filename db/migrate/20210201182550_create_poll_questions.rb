# frozen_string_literal: true

class CreatePollQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :poll_questions do |t|
      t.references :question
      t.references :poll
      t.integer :set
      t.timestamps
    end
  end
end
