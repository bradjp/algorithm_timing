require_relative 'reverse'

def code_timer(method, input)
  x = Reverse.new

  five = [0,2,3,4]
  ten = [98,98]
  fifteen = []
  twenty = []
  twenty_five = []
  

  start = Time.now
  x.send(method, five)
  five_k_time = Time.now - start

  p ten
  p five
  puts "Time\n\n----\n\nFive-thousand-item array: #{five_k_time}"

end
