class Find_duplicates

  def find_duplicates(arr)

    dupes = []
    
    hash = {}

    arr.each do |el|
      if hash[el].nil?
        hash[el] = 1
      else
        hash[el] += 1
      end
    end

    hash.each_key do |key|
      if hash[key] > 1
      dupes << key
      end
    end

    if dupes.empty?
      'No duplicates'
    else
      dupes.join
    end

  end


end