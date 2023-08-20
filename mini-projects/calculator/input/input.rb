module Input

    class InputReader
    
        def read_number
            loop do 
                input = gets.chomp
                return input.to_i if number?(input)
            end
        end
  
        def read_operator
            loop do
                input = gets.chomp
                return input if operator?(input)
            end
        end
  
        private
  
        def number?(input)
            input_number = input.to_i
            input == input_number.to_s
        end
  
        def operator?(input)
            valid_operators =  ['+', '-', '*', '/', '%']
            return valid_operators.include?(input)
        end
  
    end
  end