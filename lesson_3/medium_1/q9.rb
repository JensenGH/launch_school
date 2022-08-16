# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

# What would be the return value of the following method invocation?

# Solution:
# Since "yes" is the last line in our foo method, that is our return value. When we pass the foo
# method as an argument to the bar method, "yes" will never be equal to "no". Therefore, the result
# of bar(foo) is "no".
