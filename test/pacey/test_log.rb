# frozen_string_literal: true

require "test_helper"

class TestLog < Minitest::Test
  def test_that_it_generates_output
    log = Pacey::Log.new(from: "2022/01/01", to: "2022/12/31")

    assert_kind_of Array, log.parse
  end
end
