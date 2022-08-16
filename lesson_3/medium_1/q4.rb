=begin

Problem:
Alyssa was asked to write an implentation of a rolling buffer. Elements are added to
the rolling buffer and if the buffer becomes full, then new elements that are added
will displace the oldest elements in the buffer.

She wrote two implentations saying, "Take your pick. Do you like << or + for modifying
the buffer?". Is there a difference between the two, other than what operator she
chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

Solution:
Both methods have the same return value, but one difference sets them apart. In the first method,
we use the shovel operator to append new_element to buffer. This is a destructive method, which
means after calling this method we will have mutated the object that was passed in as an argument.
In the second method we are using reassignment, which does not mutate the original object passed
in as an argument to the method.

=end