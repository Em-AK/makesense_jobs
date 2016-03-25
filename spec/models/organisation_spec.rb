require 'rails_helper'

RSpec.describe Organisation, type: :model do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :website }
    it { should allow_value('http://foo.com', 'https://secure-foo.com').for(:website) }
    it { should_not allow_value('foo.com').for(:website) }
  end
end
