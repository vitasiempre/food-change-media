class Post < ApplicationRecord
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }

mount_uploader :image, ImageUploader
has_many :tasties, dependent: :destroy
has_many :yummies, dependent: :destroy
# has_many :likesdef, dependent: :destroy
belongs_to :user

end
