class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :apply
      t.string :location
      t.string :company_name
      t.string :company_url
      t.string :email

      t.timestamps
    end
  end
end
