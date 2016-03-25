class RenameOrganisationDescriptionToMission < ActiveRecord::Migration
  def change
    rename_column :organisations, :description, :mission
  end
end
