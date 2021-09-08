# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Video.create([
  { category: "Movie", title: "Braveheart", length: 3.0, genre: "Action", rating: 5 },
  { category: "Show", title: "Ted Lasso", length: 1.0, genre: "Comedy", rating: 5 },
  { category: "Show", title: "Breaking Bad", length: 1.0, genre: "Drama", rating: 5 },
  { category: "Movie", title: "Interstellar", length: 2.5, genre: "Sci-fi", rating: 4 },
  { category: "Show", title: "Game Of Thrones", length: 0.5, genre: "Fantasy", rating: 4 },
  { category: "Movie", title: "The Thing", length: 2.0, genre: "Sci-Fi", rating: 4 }
])