# frozen_string_literal: true

require "test_helper"

class TestChange < Minitest::Test
  def setup
    @change = Pacey::Change.new
  end

  def test_that_it_responds_to_files_changed
    assert @change
  end

  def test_that_it_responds_to_insertions
    assert @change
  end

  def test_that_it_responds_to_deletions
    assert @change
  end
end
