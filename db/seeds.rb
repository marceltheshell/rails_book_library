# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# authors
a1 = Author.create!(first_name: "Anne", last_name: "Lamott")
a2 = Author.create!(first_name: "William", last_name: "Shakespeare")
a3 = Author.create!(first_name: "Lev", last_name: "Grossman")

# genres
g1 = Genre.create!(title: "self help")
g2 = Genre.create!(title: "non fiction")
g3 = Genre.create!(title: "fiction")

# books
b1 = a1.books.create!(title: "Bird by Bird")
b1.genres << g2
b1.genres << g1
b2 = a2.books.create!(title: "Macbeth")
b2.genres << g3
b3 = a2.books.create!(title: "Sonnets")
b3.genres << g3
b4 = a3.books.create!(title: "The Magicians")
b4.genres << g3 

# locations
l1 = Location.create!(name: "Dimond Branch", street_address: "555 Fruitvale St.", city: "Oakland", state: "CA", zip: "94602")
l2 = Location.create!(name: "Asian Branch", street_address: "20 5th St.", city: "Oakland", state: "CA", zip: "94602")
l3 = Location.create!(name: "Montclair Branch", street_address: "12 Piedmont St.", city: "Oakland", state: "CA", zip: "94602")

# users
u1 = User.create!(first_name: "donald", last_name: "duck", email: "m@m.com", password: "Swordfish1")
u2 = User.create!(first_name: "barbara", last_name: "striesand", email: "j@j.com", password: "Swordfish1")


# book_items
bird_by_bird_Dimond1 = BookItem.create!(book: b1, location: l1)
bird_by_bird_Dimond2 = BookItem.create!(book: b1, location: l1)
macbeth_Dimond1 = BookItem.create!(book: b2, location: l1)
sonnets_Dimond1 = BookItem.create!(book: b3, location: l1)
the_magicians_Dimond1 = BookItem.create!(book: b4, location: l1)

bird_by_bird_Asian1 = BookItem.create!(book: b1, location: l2)
bird_by_bird_Asian2 = BookItem.create!(book: b1, location: l2)
macbeth_Asian1 = BookItem.create!(book: b2, location: l2)
macbeth_Asian2 = BookItem.create!(book: b2, location: l2)
macbeth_Asian3 = BookItem.create!(book: b2, location: l2)

sonnets_montclair1 = BookItem.create!(book: b3, location: l3)
sonnets_montclair2 = BookItem.create!(book: b3, location: l3)
sonnets_montclair3 = BookItem.create!(book: b3, location: l3)
the_magicians_montclair1 = BookItem.create!(book: b4, location: l3)



# checkout_records
cr1 = CheckoutRecord.create!(user: u1, book_item: bird_by_bird_Dimond1)
cr2 = CheckoutRecord.create!(user: u1, book_item: bird_by_bird_Dimond1)

