require_relative './sum.rb'
require_relative './subtraction.rb'
require_relative './multiplication.rb'
require_relative './division.rb'
require_relative './modulo.rb'

module Operations
    class Operation
        def initialize(parameters)
            @parameters = parameters
            @operator = parameters.operator
        end

        def calculate
            begin
                case @operator
                    when '+' 
                        return Sum.calculate(@parameters)
                    when '-' 
                        return Subtraction.calculate(@parameters)
                    when '*' 
                        return Multiplication.calculate(@parameters)
                    when '/' 
                        return Division.calculate(@parameters)
                    when '%' 
                        return Modulo.calculate(@parameters)
                end
            rescue ZeroDivisionError => exception
                puts "Error - Tried to divide by zero"
            rescue Exception => exception
                puts "An error ocurred"
            end
        end
    end
end