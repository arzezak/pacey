# frozen_string_literal: true

require_relative "pacey/change"
require_relative "pacey/log"
require_relative "pacey/version"

module Pacey
  class Error < StandardError; end

  class << self
    def changes(since:)
      log(since).changes
    end

    def log(since)
      Log.new(from: since, to: Date.today)
    end
  end
end
