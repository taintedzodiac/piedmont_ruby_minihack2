%w(widow tommy sam silly).each do |user|
  user = User.find_or_initialize_by(username: user)
  user.save!
  (1..3).each do |tweets|
    tweet = Tweet.create(text: %q(Flank capicola swine landjaeger ball tip short ribs salami pig boudin pork belly pork loin jerky tongue corned beef meatball.))
    user.tweets << tweet
    tweet.save!
  end
end
