class DropSessionTable < ActiveRecord::Migration
  def change
    remove_index :sessions, :name => "index_sessions_on_session_id"
    remove_index :sessions, :name => "index_sessions_on_updated_at"
    
    drop_table :sessions
  end
end
