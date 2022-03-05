# frozen_string_literal: true

require "test_helper"

class TestLog < Minitest::Test
  def setup
    @log = Pacey::Log.new(from: "2022/02/01", to: "2022/02/28")
  end

  def test_that_it_returns_a_set_of_changes
    @log.changes.all? do |change|
      assert_instance_of(Pacey::Change, change)
    end
  end

  def test_that_it_includes_date_like_strings
    @log.send(:parse).all? do |line|
      assert_match(/^\w{3}.+\d{4}$/, line[0])
    end
  end

  def test_that_it_includes_stats
    @log.send(:parse).all? do |line|
      assert_match(/files?\schanged/, line[1])
    end
  end
end
