class CreateUserPolls < ActiveRecord::Migration[6.1]
  def change
    create_table :user_polls do |t|
      t.references :poll
      t.string :email # Here will be User's email - User's accounts not implemented yet
      t.timestamps
    end
  end
end
