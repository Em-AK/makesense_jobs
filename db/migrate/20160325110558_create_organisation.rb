class CreateOrganisation < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :website
    end
  end
end
