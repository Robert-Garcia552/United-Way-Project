# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  # config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongoid
  # config.orm = :active_record

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grand badge if no
  # `:to` option is given. Default is 'User'.
  # config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  # config.current_user_method = 'current_user'
end

Merit::Badge.create!(
  id: 1,
  name: "user-created",
  description: "User created",
  custom_fields: { image: "badges/user_profile_badge.png" }
)

Merit::Badge.create!(
  id: 2,
  name: "first-rsvp",
  description: "First event RSVP",
  custom_fields: { image: "badges/first_rsvp_badge.png" }
)

Merit::Badge.create!(
  id: 3,
  name: "five-rsvps",
  description: "Five events RSVP'd",
  custom_fields: { image: "badges/five_rsvp_badge.png" }
)

Merit::Badge.create!(
  id: 4,
  name: "ten-rsvps",
  description: "Ten event RSVP'd",
  custom_fields: { image: "badges/ten_rsvp_badge.png" }
)
