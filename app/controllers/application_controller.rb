class ApplicationController < ActionController::API
  include JSONAPI::Errors
  include JSONAPI::Deserialization
end
