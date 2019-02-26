# When given no name, it should greet the
def hello_world(input = "")
  return input == "" ? "Hello, World!" : "Hello, #{input}!"
end

puts hello_world
