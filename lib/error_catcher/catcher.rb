module ErrorCatcher
  module Catcher
    def catch e
      error = ::ErrorCatcher::Error.new
      error.name = e.class.name
      error.description = e.message
      error.stacktrace = e.backtrace.join("\n")
      error.fired_at = Time.now
      error.save!
    end
  end
end
