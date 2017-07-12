class User
  include Mongoid::Document
  validates_presence_of :username
  validates_uniqueness_of :username, :email, :case_sensitive => false

  attr_accessor :username, :display_name, :email, :password, :password_confirmation, :remember_me


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  field :username, type: String
  field :display_name, type: String
  field :level, type: String

  field :session_token, type: String
  field :perishable_token, type: String

  field :posts, type: Array
  field :drafts, type: Array

  field :followed_users, type: Array
  field :bookmarked_posts, type: Array

  field :created_date, :type => DateTime
  field :modified_date, :type => DateTime
end
