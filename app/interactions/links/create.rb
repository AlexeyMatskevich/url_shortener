module Links
  class Create < ApplicationInteraction
    string :url

    validates :url, presence: true

    def execute
      loop do
        link = Link.new(url: url)

        link.valid?

        case link
        when proc(&:url_taken?)
          return Link.find_by(url: url)
        when proc(&:short_path_taken?)
          next
        else
          link.save

          return link
        end
      end
    end
  end
end
