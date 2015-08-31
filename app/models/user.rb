# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  authentication_token :string(255)
#  email                :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class User < ActiveRecord::Base
  
  ##validations
  validates :email, presence:   true
  validates :email, uniqueness: true

  ##callbacks
  before_create :generate_authentication_token
  
  private
    def generate_authentication_token
      begin
        self.authentication_token = SecureRandom.hex
      end while self.class.where(authentication_token: authentication_token).exists?
    end
  
end
