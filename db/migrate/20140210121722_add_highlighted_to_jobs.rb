class AddHighlightedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :highlighted, :boolean
  end
end
