class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :apply
      t.string :city
      t.references :company, index: true

      t.timestamps
    end
  end
end
