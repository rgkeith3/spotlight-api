class User
  include Mongoid::Document

  field :username, type: String
  field :password_digest, type: String
  field :email, type: String
  field :display_name, type: String
  field :level, type: String

  field :session_token, type: String
  field :perishable_token, type: String

  field :followed_users, type: Array, default: []
  field :bookmarked_posts, type: Array, default: []

  field :drafts, type: Array, default: []
  field :posts, type: Array, default: []

  field :created_date, :type => DateTime
  field :modified_date, :type => DateTime

  has_many :posts
end
