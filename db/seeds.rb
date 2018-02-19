# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Concert.delete_all
User.delete_all


Concerts = [["CPaul Simon", "Chicago", "06/06/2018", "8PM", "United Center, Chicago, IL", "https://s1.ticketm.net/tm/en-us/dam/a/f91/9f963f7c-cfc7-485b-a818-136ed7a67f91_626761_CUSTOM.jpg"],
               ["Stars Align Tour: Jeff Beck & Paul Rodgers", "Chicago", "07/29/2018", "7PM", "1300 S.Linn White Drive, Chicago, IL 60605", "https://s1.ticketm.net/tm/en-us/dbimages/305645a.jpg"],
             ["Rock and Pop: Justin Timberlake", "Chicago", "03/27/2018", "7:30PM", "United Center, Chicago, IL", "https://s1.ticketm.net/tm/en-us/dam/a/e8c/2bdb4d06-79b9-416d-aac1-b29207cbfe8c_623061_CUSTOM.jpg"],
           ["Ones To Watch Presents COIN: The North American Tour 2018", "Chicago", "02/24/2018", "7PM", "House of Blues Chicago, Chicago, IL", "https://s1.ticketm.net/tm/en-us/dam/a/0ab/584a6700-3f64-4ce0-a3a4-d200b718c0ab_503851_CUSTOM.jpg"],
         ["Elton John: Farewell Yellow Brick Road", "Chicago", "10/26/2018", "7PM", "United Center, Chicago, IL", "https://s1.ticketm.net/tm/en-us/dam/a/12f/9ddad6da-104d-4b7a-bedb-698a9087012f_621881_CUSTOM.jpg"],
       ["Taylor Swift's reputation Stadium Tour", "Chicago", "06/01/2018", "7PM", "Soldier Field, Chicago, IL", "https://s1.ticketm.net/tm/en-us/dam/a/375/606d24be-8ead-40aa-a622-22e5dfd02375_581101_CUSTOM.jpg"],
     ["Slayer", "Chicago", "05/25/2018", "5PM", "Hollywood Casino Amphitheatre - Chicago, IL Tinley Park, IL", "https://s1.ticketm.net/tm/en-us/dam/a/d40/81d4c63a-f68f-4cba-8877-9ce4cd7ccd40_113721_CUSTOM.jpg"]]

Concerts.each do |entry|
  concert = Concert.new
  concert.name = entry[0]
  concert.city = entry[1]
  concert.date = entry[2]
  concert.time = entry[3]
  concert.address = entry[4]
  concert.poster_url = entry[5]
  concert.save
end

User.delete_all
User.create username: 'JackyStain', email: 'jacky@example.org', password: 'jacky123'
User.create username: 'BunnySmith', email: 'bunny@example.org', password: 'bunny456'
User.create username: 'ParkyLeven', email: 'leven@example.org', password: 'leven789'


Purchase.delete_all

purchase = Purchase.new
purchase.user_id = User.sample.id
purchase.concert_id = Concert.sample.id
purchase.update_time = Time.new
purchase.save

print "There are now #{Concert.count} concerts in the database.\n"
print "There are now #{User.count} users in the database.\n"
print "There are now #{Purchase.count} purchases in the database.\n"
