class Shuffle
  def shuffle_two(arr)
    shuffled_array = []

    arr.map! { |el| [srand, el] }

    arr.sort_by! { |el| el }

    arr.each { |el| shuffled_array << el[1] }

    shuffled_array
  end

  def shuffle_three(arr)
    x = []

    hash = {}

    arr.each { |el| hash[srand] = el }

    hash.sort_by { |k, _v| k }
        .map { |_k, v| x << v }

    x
  end
end
