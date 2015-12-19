ActiveAdmin.register Job do

permit_params :title, :description, :apply, :location, :company_name, :company_url, :email, :published, :logo, :highlighted

  # GET /admin/jobs
  index do
    column "Title", sortable: :title do |job|
      link_to job.title, staffonly_job_path(job)
    end
    column :company_name
    column :email
    column :published
    column :highlighted
    column :updated_at
    actions
  end

  #GET /admin/jobs/:id
  show do |job|
    attributes_table do
      row :id
      row :title
      row :company_name
      row :company_url do
        link_to job.company_url, job.company_url
      end
      row :logo do
        image = image_tag job.logo.url
        link_to image, job.logo.url if job.logo.url
      end
      row :location
      row :description
      row :apply
      row :created_at
      row :updated_at
      row :email
      row :token do
        link_to job.token, new_job_path(token: job.token)
      end
      row :published
      row :highlighted
    end
  end
  
end
