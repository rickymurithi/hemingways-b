class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/feedbacks" do
    feedback = Feedback.all
    feedback.to_json
  end
  get "/bookings" do
    booking = Booking.all
    booking.to_json
  end
end






