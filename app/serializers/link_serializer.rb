class LinkSerializer < ApplicationSerializer
  attributes :url, :clicked
  attributes :short_url do |object|
    Rails.application.routes.url_helpers.url_url(object.short_path)
  end
end
