# frozen_string_literal: true

require "test_helper"

class TestLog < Minitest::Test
  def test_parser_output
    log = Pacey::Log.new(from: "2022/02/01", to: "2022/02/28")

    log.parse.each { assert_match(/files?\schanged/, _1) }
  end
end
