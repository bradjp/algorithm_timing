require_relative 'reverse'

def code_timer(method, input)
  x = Reverse.new

  five_k = []
  ten = [98,98]
  fifteen = []
  twenty = []
  twenty_five = []

  5000.times { five_k << input }
  p five_k

  start = Time.now
  x.send(method, five_k)
  five_k_time = Time.now - start

  puts "Time\n\n----\n\nFive-thousand-item array: #{five_k_time}"

end
