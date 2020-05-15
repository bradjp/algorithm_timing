require_relative 'reverse'

def code_timer(method, input)
  x = Reverse.new
  start = Time.now
  x.send(method, input)
  Time.now - start
end
