=begin

If we build an array like this:

flinstones = ["Fred", "Wilma"]
flinstones << ["Barney", "Betty"]
flinstones << ["BamBam", "Pebbles"]

We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

Make this into an un-nested array.

=end

flinstones.flatten!