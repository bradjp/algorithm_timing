
def code_timer(method, input)
  start = Time.now
  input.send(method)
  Time.now - start
end
