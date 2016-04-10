require 'rails_helper'

describe ErrorCatcher::Error do
  describe 'Validation' do
    it 'nameは必須である' do
      error = described_class.new
      expect(error.valid?).to be_falsey
    end
  end
end
