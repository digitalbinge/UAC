class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :user_products
end
