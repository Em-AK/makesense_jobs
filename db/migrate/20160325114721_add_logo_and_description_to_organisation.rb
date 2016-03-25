class AddLogoAndDescriptionToOrganisation < ActiveRecord::Migration
  def change
    add_column :organisations, :logo, :string
    add_column :organisations, :description, :string
  end
end
