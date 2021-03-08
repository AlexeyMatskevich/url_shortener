require "rails_helper"

RSpec.describe Links::Create do
  subject(:command) { described_class.run(url: url) }

  let(:url) { attributes_for(:link)[:url] }

  describe "#result" do
    subject(:result) { command.result }

    it { is_expected.to be_instance_of(Link) }

    context "when link already exist" do
      let!(:link) { create(:link, url: url) }

      it { is_expected.to eq link }
    end
  end

  describe ".run" do
    it("create link") { expect { command }.to change(Link, :count).by(1) }

    context "when link with url already exist" do
      before { create(:link, url: url) }

      it("NOT create link") { expect { command }.not_to change(Link, :count) }
    end

    context "when the same short_path used twice" do
      before do
        allow(SecureRandom).to receive(:urlsafe_base64).and_return("same", "same", "different")

        create(:link)
      end

      it("create link") { expect { command }.to change(Link, :count).by(1) }
    end
  end
end
