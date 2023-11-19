class Blog < ApplicationRecord
  mount_uploader :post_image, ImageUploader
end