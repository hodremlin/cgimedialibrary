class VerticalCategory < ActiveRecord::Base
  has_many :verticals, inverse_of: :category
  has_many :websites, through: :verticals, inverse_of: :category
  
  def slug
    title.parameterize('_')
  end
end
