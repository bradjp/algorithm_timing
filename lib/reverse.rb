class Reverse

  def reverse_two(arr)
    reversed_array = []
    
    while arr.length > 0 do
      reversed_array << arr[-1]
      arr.pop
    end
    reversed_array
  end

end