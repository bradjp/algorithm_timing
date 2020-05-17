require_relative 'reverse'

def code_timer(method, array_size, _no_of_tests)
  arr = []

  array_size.times { arr << 0 }

  run_timer(method, arr)
end

def run_timer(method, arr)
  x = Reverse.new
  start = Time.now
  x.send(method, arr)
  output = Time.now - start
end
