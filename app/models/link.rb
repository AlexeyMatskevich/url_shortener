class Link < ApplicationRecord
  attribute :short_path, :string, default: -> { SecureRandom.urlsafe_base64(8) }

  validates :url, :short_path, presence: true, uniqueness: true

  def url_taken?
    field_taken?(:url)
  end

  def short_path_taken?
    field_taken?(:short_path)
  end

  private

  def field_taken?(field)
    errors.any? { |error| error.attribute == field && error.type == :taken }
  end
end
