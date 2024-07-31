module QueulorViews::Cpns
  class AccordionCpn < QueulorViews::Base
    renders_many :sections, lambda { |title: nil, expanded: false, html_attributes: {}, &block|
      QueulorViews::Cpns::Accordion::SectionCpn.new title:, expanded:, html_attributes:, &block
    }

    def initialize(html_attributes: {})
      super
    end

    erb_template <<-ERB
      <%= tag.div(**default_html_attributes) { safe_join sections } %>
    ERB

    private

    def default_html_attributes
      {
        "class": "queulor_accordion"
      }
    end
  end
end
