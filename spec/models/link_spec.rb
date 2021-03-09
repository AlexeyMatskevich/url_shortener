require "rails_helper"

RSpec.describe Link, type: :model do
  describe ".new" do
    subject(:new) { described_class.new }

    it "return object with default value for short_path field" do
      expect(new.attributes.compact).to include("short_path")
    end
  end
end
