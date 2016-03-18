class AddRecruiterToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :recruiter, index: true
  end
end
