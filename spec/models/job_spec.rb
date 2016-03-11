require 'rails_helper'

RSpec.describe Job, type: :model do

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :email }
    it { should validate_presence_of :apply }
    it { should validate_presence_of :company_name }
    it { should allow_value('http://foo.com', 'https://secure-foo.com')
         .for(:company_url) }
    it { should_not allow_value('foo.com').for(:company_url) }
  end
end
