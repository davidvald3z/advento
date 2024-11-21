class Advento
    def digits_match(input)
        result = 0
        input_arr = input.split("")
        input_arr.each_with_index do |digit, index|
            if index == (input_arr.size - 1)
                if digit == input_arr.first
                    result = result + digit.to_i
                end
            else
                if digit == input_arr[index + 1]
                    result = result + digit.to_i
                end
            end
        end
    
        result
    end
end

