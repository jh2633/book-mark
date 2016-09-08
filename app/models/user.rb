require 'bcrypt'
require 'dm-validations'

class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String, required: true, format: :email_address, unique: true,
      messages: {
        presence: "Email is mandatory",
        format: "Doesn't look like an email address",
        is_unique: "We already have that email"
      }
  property :password, BCryptHash

  attr_accessor :password_confirmation
  attr_reader :password

  validates_confirmation_of :password,
    :message => 'Password mismatch'
end
