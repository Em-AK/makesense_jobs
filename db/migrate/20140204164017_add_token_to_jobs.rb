class AddTokenToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :token, :string
    add_index :jobs, :token
  end
end
