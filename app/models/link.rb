class Link < ApplicationRecord
  validates :url, :short_path, presence: true, uniqueness: true
end
