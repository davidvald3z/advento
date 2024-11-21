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

    def halfway_digits_match(input)
        result = 0
        input_arr = input.split("")
        halfway = input_arr.size/2
        
        input_arr.each_with_index do |digit, index|
            if index >= halfway
                if digit == input_arr[index - halfway]
                    result = result + digit.to_i
                end
            else
                if digit == input_arr[halfway + index]
                    result = result + digit.to_i
                end
            end
        end

        result
    end

    def checksum(spread)
        sum_diff = 0
        spread.each do |row|
            arr_row = row.split("")
            min_val = arr_row.first.to_i
            max_val = arr_row.first.to_i

            arr_row.each do |element|
                max_val = element.to_i if element.to_i >  max_val
                min_val = element.to_i if element.to_i <  min_val
            end

            diff = max_val - min_val
            sum_diff = sum_diff + diff
        end

        sum_diff
    end
end
