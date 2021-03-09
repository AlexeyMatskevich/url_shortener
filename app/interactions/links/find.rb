module Links
  class Find < ApplicationInteraction
    string :short_path

    validates :short_path, presence: true

    def execute
      link = Link.find_by(short_path: short_path)

      return errors.add(:short_path, "does not exist") unless link

      Link.update_counters link, clicked: 1

      link
    end
  end
end
