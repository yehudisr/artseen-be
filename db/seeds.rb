# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

Comment.destroy_all
EventListing.destroy_all
Event.destroy_all
User.destroy_all

#USERS
User.create(firstname: "Alex", lastname: "P", email: "pesh@example.com", password_digest: "123")
User.create(firstname: "Linda", lastname: "H", email: "linda@example.com", password_digest: "abc")
User.create(firstname: "Yehudis", lastname: "R", email: "yehudisr@gmail.com", password_digest: "abc")
User.create(firstname: "Romulus", lastname: "P", email: "doge@example.com", password_digest: "123")
User.create(firstname: "Bat", lastname: "Man", email: "batman@example.com", password_digest: "batman")


#EVENTS
# Event.create(title:"ArTechNow", location: "New York", description:"A journey between Art and Technology", link:"blablabla")
# Event.create(title:"Once upon the Time", location: "Chicago", description:" When time, tech and Contemporary Art has merged", link:"blablabla")
# Event.create(title:"JavArtScript", location: "New York", description:" A showcase of art performance through programming", link:"blablabla")
# Event.create(title:"Python", location: "New York", description:" From your keyboard to the Jungle", link:"blablabla")


#EVENTS

# uri = URI('http://www.nyartbeat.com/list/event_searchNear?latitude=40.719130&longitude=-73.980000')
# def events
#     resp = RestClient.get'http://www.nyartbeat.com/list/event_searchNear?latitude=40.719130&longitude=-73.980000'
#     JSON.parse(resp)
# end 
# url = 'http://www.nyartbeat.com/list/event_searchNear?latitude=40.719130&longitude=-73.980000'
def events
    url = 'https://api.artic.edu/api/v1/exhibitions?limit=35'

    res = RestClient.get(url)
    JSON.parse(res)
end


events["data"].each do |event|
    if event["image_url"]
        Event.create(title: event["title"] , description: event["description"] , date: event["aic_start_at"] , image: event["image_url"] , link: event["web_url"], location: "Chicago" )
    end 
end 




#EVENT LISTINGS
EventListing.create(user_id: 1, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 1, event_id: 2, saved: true, seen: false,booked: false )
EventListing.create(user_id: 1, event_id: 3, saved: true, seen: false, booked: false )
EventListing.create(user_id: 1, event_id: 4, saved: true, seen: false, booked: false )
EventListing.create(user_id: 2, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 2, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 2, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 2, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 3, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 3, event_id: 2, saved: true, seen: false, booked: false )
EventListing.create(user_id: 3, event_id: 3, saved: true, seen: false, booked: false )
EventListing.create(user_id: 3, event_id: 4, saved: true, seen: false, booked: false )
EventListing.create(user_id: 5, event_id: 1, saved: true, seen: false, booked: true )
EventListing.create(user_id: 5, event_id: 1, saved: true, seen: false, booked: true )
EventListing.create(user_id: 5, event_id: 1, saved: true, seen: false, booked: false )
EventListing.create(user_id: 5, event_id: 2, saved: true, seen: true, booked: false )




# events.each do |event|
#     event
#     byebug
# end

#COMMENTS
Comment.create(content: "Do not pass by, it does not worth your time", event_id: 1, user_id: 4)
Comment.create(content: "Awesome", event_id: 2, user_id: 3)
Comment.create(content: "Loved it", event_id: 3, user_id: 2)
Comment.create(content: "Was it art or bullshit ? I can’t tell", event_id: 4, user_id: 1)
Comment.create(content: "Great", event_id: 1, user_id: 4)

puts "SEEDED"