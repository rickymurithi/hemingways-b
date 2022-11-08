puts "🌱 Seeding spices..."

puts "Deleting old data..."
Feedback.destroy_all
User.destroy_all
Booking.destroy_all

# Seed your database here
#make 10 users
puts "Creating users..."
user1 = User.create(name: "Kev")
user2 = User.create(name: "Mike")
user3 = User.create(name: "Tom")
user4 = User.create(name: "Frank")
user5 = User.create(name: "Tim")

#make 5 Bookings
puts "Creating Bookings..."
booking1 = Booking.create(name: user1.id, email: "google@google", phone_number: 725673932, suite:"Laxury")
booking2 = Booking.create(name: user4.id, email: "me@google", phone_number: 757939784, suite:"Economy")
booking3 = Booking.create(name: user2.id, email: "you@google", phone_number: 7848648968, suite:"Laxury")
booking4 = Booking.create(name: user1.id, email: "us@google", phone_number: 7277277275, suite:"Business")
booking5 = Booking.create(name: user3.id, email: "them@google", phone_number: 7753183676, suite:"Business")

puts "Creating feedbacks..."
feedbacks1 = Feedback.create(rating: "3", comment: "Avarage", name: "user2", photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking3.id, user_id: user2.id)
feedbacks2 = Feedback.create(rating: "5", comment: "Very good", name: "user1", photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking1.id, user_id: user1.id)
feedbacks3 = Feedback.create(rating: "3", comment: "Avarage", name: "user1", photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking1.id, user_id: user1.id)
feedbacks4 = Feedback.create(rating: "4", comment: "Good", name: "user4", photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking2.id, user_id: user4.id)
feedbacks5 = Feedback.create(rating: "5", comment: "Very good", name: "user3", photo_url: "https://i.pinimg.com/236x/87/42/31/8742315158e5de302ae9c5a2f9bee233.jpg", booking_id: booking5.id, user_id: user3.id)

puts "✅ Done seeding!"
