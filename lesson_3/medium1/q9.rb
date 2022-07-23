# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

# Solution: Since the return value of foo is "yes", and "yes" == "no" is false, the
# output of calling bar(foo) is "no".