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
    default_actions
  end
  
end
