require "rails_helper"

RSpec.describe Links::Find do
  subject(:command) { described_class.run(short_path: short_path) }

  let(:short_path) { create(:link)[:short_path] }

  describe "#result" do
    subject(:result) { command.result }

    it { is_expected.to be_instance_of(Link) }
  end

  describe "#valid?" do
    subject(:valid?) { command.valid? }

    it { is_expected.to eq(true) }

    context "when link not exists" do
      let(:short_path) { attributes_for(:link)[:short_path] }

      it { is_expected.to eq(false) }
    end
  end

  describe ".run" do
    it("update link") { expect { command }.to change { Link.find_by(short_path: short_path).clicked }.by(1) }
  end
end
