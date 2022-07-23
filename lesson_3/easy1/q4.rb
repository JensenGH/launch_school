=begin

The Ruby Array class has several methods for removing items from the array. Two
of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

What do the following method calls do (assume we reset numbers to the original
array between method calls)?

numbers.delete_at(1) => [1, 3, 4, 5]
numberes.delete(1) => [2, 3, 4, 5]

1. delete_at is a method that will delete an element based on it's index and the
return value is the element that was removed.

2. The delete method deletes all items from self that are equal to object and returns
the last deleted item, or nil if no matching item is found.

While both of these methods don't require the bang operator by convention, they are
still destructive methods that mutate the original object.

=end