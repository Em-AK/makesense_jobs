require 'rails_helper'

RSpec.describe Job, type: :model do

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :email }
    it { should validate_presence_of :apply }
    it { should validate_presence_of :company_name }
  end
end
