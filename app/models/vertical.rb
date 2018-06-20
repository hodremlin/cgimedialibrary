class Vertical < ActiveRecord::Base
  has_many :video_players
  has_many :websites
  belongs_to :category, class_name: 'VerticalCategory', foreign_key: :vertical_category_id
end
