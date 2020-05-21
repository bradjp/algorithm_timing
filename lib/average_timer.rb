require_relative 'reverse'

def code_timer(method, array_size, no_of_runs)
  arr = []
  test_results = []

  array_size.times { arr << 0 }

  no_of_runs.times { test_results << run_timer(method, arr) }

  print_results(test_results)
end

def run_timer(method, arr)
  x = Reverse.new
  start = Time.now
  x.send(method, arr)
  Time.now - start
end

def average_time(results)
  results.inject(:+) / results.length
end

def print_results(results)
  puts "Results\n-------\n\nMinimum time: #{results.min}\n\nMaximum time: #{results.max}\n\nAverage time: #{average_time(results)}"
end
