require "pusher/push_notifications"

puts "PUSHER_APP_ID #{ApplicationConfig["PUSHER_APP_ID"]}"
puts "PUSHER_KEY #{ApplicationConfig["PUSHER_KEY"]}"
puts "PUSHER_SECRET #{ApplicationConfig["PUSHER_SECRET"]}"
puts "PUSHER_CLUSTER #{ApplicationConfig["PUSHER_CLUSTER"]}"


Pusher.app_id = ApplicationConfig["PUSHER_APP_ID"]
Pusher.key = ApplicationConfig["PUSHER_KEY"]
Pusher.secret = ApplicationConfig["PUSHER_SECRET"]
Pusher.cluster = ApplicationConfig["PUSHER_CLUSTER"]
Pusher.logger = Rails.logger
Pusher.encrypted = true

Pusher::PushNotifications.configure do |config|
  config.instance_id = ApplicationConfig["PUSHER_BEAMS_ID"]
  config.secret_key = ApplicationConfig["PUSHER_BEAMS_KEY"]
end
