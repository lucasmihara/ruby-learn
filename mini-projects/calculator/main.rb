$LOAD_PATH << '.'
require "input/calculationParametersReader.rb"
require "operations/operation.rb"

parameters = Input::CalculationParametersReader.new.read_parameters
puts Operations::Operation.new(parameters).calculate