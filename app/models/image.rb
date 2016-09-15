class Image < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags, dependent: :destroy
  has_many :tagged_users, through: :tags, source: :user
  has_attached_file :photo, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates :caption, :presence => true

end
