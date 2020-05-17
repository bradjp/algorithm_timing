require_relative 'reverse'

def code_timer(method, input)

  five_k, ten_k, fifteen_k, twenty_k, twenty_five_k = [],[],[],[],[]

  5000.times { five_k << input }
  10000.times { ten_k << input }
  15000.times { fifteen_k << input }
  20000.times { twenty_k << input }
  25000.times { twenty_five_k << input }

  five_k_time = run_timer(method, five_k)
  
  ten_k_time = run_timer(method, ten_k)
  
  fifteen_k_time = run_timer(method, fifteen_k)
  
  twenty_k_time = run_timer(method, twenty_k)

  twenty_five_k_time = run_timer(method, twenty_five_k)

  def print_times(*times)
    puts "Time\n\n----\n
    \n5,000 item array: #{five_k_time}
    \n10,000 item array: #{ten_k_time}
    \n15,000 item array: #{fifteen_k_time}
    \n20,000 item array: #{twenty_k_time}
    \n25,000 item array: #{twenty_five_k_time}"
  end

end

def run_timer(method, input)
  x = Reverse.new
  start = Time.now
  x.send(method, input)
  output = Time.now - start
end