# frozen_string_literal: true

module Pacey
  class Log
    attr_reader :from, :to

    def initialize(from:, to:)
      @from = from
      @to = to
    end

    def parse
      lines.map(&prepare)
    end

    private

    def prepare
      proc { |line| line.strip.split(/\n{2}\s/) }
    end

    def lines
      command.split("\\").reject(&:empty?)
    end

    def command
      `git log --format="\\%cd" --shortstat --since=#{from} --until=#{to}`
    end
  end
end
