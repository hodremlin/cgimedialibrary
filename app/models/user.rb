class User < ActiveRecord::Base
  has_many :media_items
  
  has_many :favorites
  has_many :favorite_media_items, through: :favorites, source: :favorited, source_type: 'MediaItem'
  has_many :favorite_websites, through: :favorites, source: :favorited, source_type: 'Website'
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable
  
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
  
  validates :username, presence: true, uniqueness: true, format: /\A[a-zA-Z0-9_\.]*\z/
  
end
