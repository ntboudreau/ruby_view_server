require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

things_to_test = ["code", "objects", "methods"]
things_to_test.each do |test_thing|
  puts ERB.new("Wow, I love testing new <%= test_thing %>!!").result(binding)
end

if things_to_test.length > 1
  busy_status = "So much testing! I am a very busy coder!"
else
  busy_status = "Only one thing to test? Looks like someone needs more work"
end

busyness_test = ERB.new "Checking to see how much testing has been done... \n<%= busy_status %>"
puts busyness_test.result(binding)