class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(_str)
    # TODO: Implement this method
    str = _str.gsub(/[A-Za-z]{5,}/) do |match|
      if match.start_with?(/[A-Z]/)
        "Marklar"
      else
        "marklar"
      end
    end

    return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

    fib_nums = Array.new(nth)

    for i in 0..nth-1 do
      if i < 2
        fib_nums[i] = 1
      else
        fib_nums[i] = fib_nums[i-1] + fib_nums[i-2]
      end
    end

    even_sum = 0

    fib_nums.each do |num|
      if num % 2 == 0
        even_sum += num
      end
    end

    return even_sum
  end
end
