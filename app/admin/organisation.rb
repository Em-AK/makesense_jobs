ActiveAdmin.register Organisation do

permit_params :name, :website

  # GET /admin/organisations
  index do
    column :name
    column :website
    actions
  end

  #GET /admin/organisations/:id
  show do |org|
    attributes_table do
      row :id
      row :name
      row :website
    end
  end
end
