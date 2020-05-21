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
    arr
  end


end
