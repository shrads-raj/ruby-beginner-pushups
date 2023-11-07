class Exercise1

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def question_one
    return @first_name + @last_name
  end

  def question_two(four_digit_num)
    result = Hash.new
    output = four_digit_num.divmod(1000)
    result[:thousandth_place] = output[0]
    output = output[1].divmod(100)
    result[:hundredth_place] = output[0]
    output = output[1].divmod(10)
    result[:tenth_place] = output[0]
    result[:ones_place] = output[1]
    puts result
  end

  def question_three
    result = { 2000 => "abcd", 2001 => "xyz", 2002 => 'qwerty', 2003 => 'kljz'}
    year_array = Array.new
    result.each { |k,v| year_array << k }
    puts year_array
  end

  def question_factorial(num)
    return 1 if num.eql?(0 || 1)

    return num * question_factorial(num - 1)
  end

  def question_squares(num)
    return num * num
  end

  def merge(nums1, m, nums2, n)
      first_array = []
      m.times { |index| first_array << nums1[index] }
      merged_array = first_array + nums2
      for position in 1...merged_array.size
          key = merged_array[position]
          compare_index = position - 1
          until ( compare_index < 0 && merged_array[compare_index] < key)
              merged_array[compare_index + 1] = merged_array[compare_index]
              compare_index -= 1
          end
          merged_array[compare_index + 1] = key
      end
       merged_array
  end
end