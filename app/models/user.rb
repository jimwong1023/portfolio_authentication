class User < ActiveRecord::Base
  include BCrypt

  attr_reader :password

  def password=(new_password)
    @password = new_password
    self.password_hash = Password.create(new_password)
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    (user && Password.new(user.password_hash) == password) ? user : nil
  end
  #TODO : Use bcrypt to store hashed passwords and authenticate users
end
