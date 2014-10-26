json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :student_number, :gender
  json.url user_url(user, format: :json)
end
