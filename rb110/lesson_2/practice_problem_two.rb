# Practice problem 2

# How would you order this array of hashes based on the year of publication of each book, from
# earliest to latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_by_year = books.sort do |a, b|
  a[:published] <=> b[:published]
end

p sorted_by_year