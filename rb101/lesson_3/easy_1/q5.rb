# Programatically determine if 42 lies between 10 and 100. Use Ruby's range object
# in your solution.

(10..100).cover?(42)
42.between?(10, 100) # Second option although we don't use the range object.

# When we call the cover method with an argument, it returns true when the given
# range is covered by the reciever by comparing the begin and end values.