class Post
  include Mongoid::Document

  field :title, type: String
  field :url, type: String
  field :draft, type: Boolean

  field :created_date, :type => DateTime
  field :modified_date, :type => DateTime

  belongs_to :user
end
