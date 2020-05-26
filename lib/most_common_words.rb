class Most_common_words
  def most_common_words(arr)
    hash = {}

    arr.each do |el|
      if hash[el]
        hash[el] += 1
      else
        hash[el] = 1
      end
    end

    x = hash.sort_by { |_k, v| v }.to_a

    if x.length < 2
      nil
    elsif x.length == 2
      [x[-1][0], x[-2][0]].sort
    else
      [x[-1][0], x[-2][0]].sort
    end
  end
end
