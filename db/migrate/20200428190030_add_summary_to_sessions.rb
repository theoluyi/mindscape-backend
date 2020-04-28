class AddSummaryToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :summary, :text
  end
end
