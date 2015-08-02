json.array! @tweets do |tweet|
  json.text tweet.text
  json.created_at tweet.created_at
  json.updated_at tweet.updated_at
  json.author do
    json.username tweet.user.username
    json.user_id tweet.user.id
  end
end
