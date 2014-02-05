class AddPublishedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :published, :boolean
    add_index :jobs, :published
  end
end
