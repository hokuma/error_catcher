require 'rails_helper'

describe ErrorCatcher::Catcher do
  class TestError < StandardError; end
  let(:test_class) { Class.new { include ::ErrorCatcher::Catcher } }

  it 'errorが保存されること' do
    exception = TestError.new
    begin
      raise exception
    rescue Exception => e
      expect { test_class.new.catch(e) }.to change { ::ErrorCatcher::Error.count }.from(0).to(1)
    end
  end
end
