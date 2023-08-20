$LOAD_PATH << '.'
require "input/input.rb"
require_relative "../operations/calculationParameters.rb"

module Input
    class CalculationParametersReader
        def initialize(reader = Input::InputReader.new)
            @reader = Input::InputReader.new
        end
        
        def read_parameters
            @first_value = @reader.read_number
            @operator = @reader.read_operator
            @second_value = @reader.read_number
            return Operation::CalculationParameters.new(@first_value, @second_value, @operator)
        end
    end
end