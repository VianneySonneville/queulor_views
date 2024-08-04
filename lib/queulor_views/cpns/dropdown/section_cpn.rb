# frozen_string_literal

module QueulorViews::Cpns::Dropdown
  class SectionCpn < QueulorViews
    attr_reader :label, :link, html_attributes:

    def initialize(label:, link:, html_attributes: {})
      super(html_attributes:)
      @label = label
      @link = link
      @html_attributes = html_attributes
    end

    erb_template <<-ERB
      <%= tag.a label, href: link, **html_attributes %>
    ERB
  end
end
