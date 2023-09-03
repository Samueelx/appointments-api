json.extract! user, :id, :email, :password_digest, :first_name, :last_name, :admin, :booking_link, :created_at, :updated_at
json.url user_url(user, format: :json)
