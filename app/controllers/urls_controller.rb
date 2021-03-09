class UrlsController < ApplicationController
  def create
    outcome = Links::Create.run(url: jsonapi_deserialize(params, only: [:url])["url"])

    if outcome.valid?
      render json: ::LinkSerializer.new(outcome.result, {fields: {link: [:short_url]}}), status: :created
    else
      # Hack jsonapi gem
      link = Link.new
      link.errors.merge!(outcome.errors)

      render jsonapi_errors: link.errors, status: :unprocessable_entity
    end
  end

  def show
    outcome = Links::Find.run(short_path: short_path)

    if outcome.valid?
      render json: LinkSerializer.new(outcome.result, {fields: {link: [:url]}})
    else
      raise ActiveRecord::RecordNotFound
    end
  end

  def stats
    link = Link.find_by!(short_path: short_path)

    render json: LinkSerializer.new(link, {fields: {link: [:clicked]}})
  end

  private

  def short_path
    URI(params[:short_url]).path
  end
end
