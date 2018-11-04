require "test_helper"
require "test"

class TestTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Test::VERSION
  end

  def test_assert
    assert_equal "Passed",
                 Test.assert(expected: 2, actual: 2)
  end
end
