require 'rails_helper'

RSpec.describe Job do

  describe 'validations' do

    it 'should have a title' do
      job = build :job, title: nil
      expect(job).to_not be_valid
    end
  end
end
