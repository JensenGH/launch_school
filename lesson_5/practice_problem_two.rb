# Practice problem 2
# How would you order this array of hashes based on the year of publication of each book, from
# earliest to latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Solution 1

sorted_books = books.sort_by do |hash|
  hash.sort do |a, b|
    a[1] <=> b[1]
  end
end

p sorted_books

# Solution 2

books.sort_by do |book|
  book[:published]
end