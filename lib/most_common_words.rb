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

    [x[-1][0], x[-2][0]].sort if x.length > 1
        
  end
end
