# frozen_string_literal: true

require "time"

module Pacey
  class Change
    attr_reader :date, :stat

    def initialize(date, stat)
      @date = Time.parse(date)
      @stat = stat
    end

    def files
      stat[/\d+(?=\sfiles?\schanged)/].to_i
    end

    def insertions
      stat[/\d+(?=\sinsertions?)/].to_i
    end

    def deletions
      stat[/\d+(?=\sdeletions?)/].to_i
    end
  end
end
