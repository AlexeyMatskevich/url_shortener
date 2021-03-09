require "rails_helper"

RSpec.describe UrlsController, type: :request do
  describe "#create" do
    let(:url) { attributes_for(:link)[:url] }
    let(:params) { {data: {type: "link", attributes: {url: url}}} }

    before { post urls_url, params: params, as: :jsonapi }

    it("return created") { expect(response).to have_http_status(:created) }

    context "when url attribute empty" do
      let(:url) { "" }

      it("returns unprocessable_entity") do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "#show" do
    let(:short_path) { create(:link).short_path }

    before { get url_url(short_path) }

    it("return success") { expect(response).to have_http_status(:success) }

    context "when link NOT exists" do
      let(:short_path) { "short_path" }

      it("return not_found") { expect(response).to have_http_status(:not_found) }
    end
  end

  describe "#stats" do
    let(:short_path) { create(:link).short_path }

    before { get stats_url_url(short_path) }

    it("return success") { expect(response).to have_http_status(:success) }

    context "when link NOT exists" do
      let(:short_path) { "short_path" }

      it("return not_found") { expect(response).to have_http_status(:not_found) }
    end
  end
end
