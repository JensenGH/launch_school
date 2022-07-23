=begin

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

The difference is that in our first implementation, we are appending new_element
to buffer which mutates the original object, a.k.a the input argument. In our 
second solution we are using reassignment which does not mutate the caller.