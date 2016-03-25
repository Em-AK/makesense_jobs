ActiveAdmin.register Organisation do

permit_params :name, :website, :logo, :mission

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
      row :mission
      row :logo do
        image = image_tag org.logo.url
        link_to image, org.logo.url if org.logo.url
      end
    end
  end
end
