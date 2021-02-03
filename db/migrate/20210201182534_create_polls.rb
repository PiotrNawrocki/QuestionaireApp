# frozen_string_literal: true

class CreatePolls < ActiveRecord::Migration[6.1]
  def change
    create_table :polls do |t|
      t.text :description
      t.timestamps
    end
  end
end
