class CreatePerceptions < ActiveRecord::Migration[6.0]
  def change
    create_table :perceptions do |t|
      t.string :note
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
