require_relative 'reverse'

def code_timer(method, input)
  x = Reverse.new

  five_k = []
  ten_k = []
  fifteen_k = []
  twenty_k = []
  twenty_five_k = []

  5000.times { five_k << input }
  10000.times { ten_k << input }
  15000.times { fifteen_k << input }
  20000.times { twenty_k << input }
  25000.times { twenty_five_k << input }

  start = Time.now
  x.send(method, five_k)
  five_k_time = Time.now - start
  
  start = Time.now
  x.send(method, ten_k)
  ten_k_time = Time.now - start
  
  start = Time.now
  x.send(method, fifteen_k)
  fifteen_k_time = Time.now - start
  
  start = Time.now
  x.send(method, twenty_k)
  twenty_k_time = Time.now - start
  
  start = Time.now
  x.send(method, twenty_five_k)
  twenty_five_k_time = Time.now - start

  puts "Time\n\n----\n
  \n5,000 item array: #{five_k_time}
  \n10,000 item array: #{ten_k_time}
  \n15,000 item array: #{fifteen_k_time}
  \n20,000 item array: #{twenty_k_time}
  \n25,000 item array: #{twenty_five_k_time}"

end
