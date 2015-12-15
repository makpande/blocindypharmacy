class Post < ActiveRecord::Base
  
  has_many :comments, dependent: :destroy
  belongs_to :topic
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :user, presence: true
  validates :topic, presence: true
end
