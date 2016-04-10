module ErrorCatcher
  class Error < ActiveRecord::Base
    validates :name, presence: true
  end
end
