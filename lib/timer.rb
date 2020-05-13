class Timer

  def reverse_two(arr)
    arr.reverse
  end

  def code_timer(method, input)
    timer = Timer.new
    start = Time.now
    timer.send(method, input)
    #Time.now - start
  end

end