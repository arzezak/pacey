# frozen_string_literal: true

require "test_helper"

class TestChange < Minitest::Test
  def setup
    @change = Pacey::Change.new("3 files changed, 8 insertions(+), 1 deletion(-)")
  end

  def test_that_it_responds_to_files
    assert_equal 3, @change.files
  end

  def test_that_it_responds_to_insertions
    assert_equal 8, @change.insertions
  end

  def test_that_it_responds_to_deletions
    assert_equal 1, @change.deletions
  end
end
