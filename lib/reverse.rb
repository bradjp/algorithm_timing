class Reverse
  def reverse_two(arr)
    reversed_array = []

    while arr.length.positive?
      reversed_array << arr[-1]
      arr.pop
    end
    reversed_array
  end

  def reverse_three(arr)
    new_array = []

    final_array = []

    arr.each_with_index do |_item, index|
      new_array << index
    end

    new_array.sort! { |low, high| high <=> low }

    zipped_array = arr.zip(new_array)

    final_array = zipped_array.sort! { |el| el[1] }

    final_array.map { |el| el[0] }
  end
end
