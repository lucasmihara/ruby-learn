module Operation
    class CalculationParameters
        def initialize(first_value, second_value, operator)
            @first_value = first_value
            @operator = operator
            @second_value = second_value
        end

        attr_reader :first_value, :second_value, :operator
    end
end