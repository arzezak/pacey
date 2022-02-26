# frozen_string_literal: true

module Pacey
  class Change
    attr_reader :stat

    def initialize(stat)
      @stat = stat
    end

    def files
      stat[/\d+(?=\sfiles?\schanged)/].to_i
    end

    def insertions
      stat[/\d+(?=\sinsertions?)/].to_i
    end
  end
end
