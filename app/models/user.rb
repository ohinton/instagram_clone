class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :images
  has_many :comments
  has_many :tags
  has_many :tagged_images, through: :tags, dependent: :destroy, source: :image

  validates :email, :presence => true

end
