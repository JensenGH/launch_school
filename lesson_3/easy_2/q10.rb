# Back in the stone age (before CSS) we used spaces to align things on the screen.
# If we had a table of Flintstones Family members that was forty characters in width,
# how could we easily center that title above the table with spaces?

title = "Flintstones Family Members"


# Solution:
title.center(40)

# This method centers the string in width. If width is greater than the length
# of string, returns a new string of length width with string centered and padded
# with padstr. Otherwise, returns string.