# frozen_string_literal: true

module Pacey
  class Log
    attr_reader :from, :to

    def initialize(from:, to:)
      @from = from
      @to = to
    end

    def parse
      command.split("\n").map(&:strip)
    end

    private

    def command
      `git log --format='' --shortstat --since=#{from} --until=#{to}`
    end
  end
end
