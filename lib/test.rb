require "test/version"

# module for check and run tests
module Test
  class Error < StandardError; end

  def self.assert(expected:, actual:)
    expected == actual ? "Passed" : "Failed"
  end

  # run all methods -> tests_array:, instance -> tests:
  # method without parameters

  def self.run_tests(tests_array:, tests:)
    tests_array.each do |test_method|
      tests.send(test_method)
    end
  end
end
