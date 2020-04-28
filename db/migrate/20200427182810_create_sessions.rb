class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration
      t.binary :landscape
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
