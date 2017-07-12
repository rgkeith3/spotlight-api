class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :draft, type: Boolean
  field :author, type: String

  has_mongoid_attached_file :content

  field :created_date, :type => DateTime
  field :modified_date, :type => DateTime
end
