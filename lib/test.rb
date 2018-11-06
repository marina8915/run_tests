require "test/version"

# module for check and run tests
module Test
  class Error < StandardError; end

  def self.assert(expected:, actual:)
    expected == actual ? "Passed" : "Failed"
  end

  # run all methods -> tests_array:, instance -> tests:
  # method without parameters

  def self.run_tests(test_class:, tests:)
    tests_array = test_class.methods(false)
    tests_array.each do |test_method|
      puts tests.send(test_method)
    end
  end
end
