def max_multiplication(input_str)
    # Check if the input is a string
    return nil unless input_str.is_a?(String)
  
    max_result = nil  # Initialize max_result as nil
  
    # Remove spaces from the input string
    input_str = input_str.gsub(/\s+/, '')
  
    (0..input_str.length - 4).each do |i|
      # Extract 4 characters from the string
      sub_string = input_str[i, 4]
  
      # Check if the sub-string contains 4 digits
      if sub_string.match?(/^\d{4}$/)
        # Convert the sub-string to an array of integers
        digits = sub_string.chars.map(&:to_i)
  
        # Calculate the multiplication result of the 4 digits
        result = digits.reduce(:*)
  
        # Update max_result if a higher result is found
        max_result = result if max_result.nil? || result > max_result
      end
    end
  
    max_result
  end
  
  # Example usage:
  puts max_multiplication('abc12345defefgd7349lkjh834oip')  # Output: 756
  puts max_multiplication('a1b2c3d4e')  # Output: nil
  