module QueulorViews::Cpns
  class AccordionCpn < QueulorViews::Base
    attr_reader :html_attributes
    renders_many :sections, lambda { |title: nil, expanded: false, html_attributes: {}, &block|
      QueulorViews::Cpns::Accordion::SectionCpn.new title:, expanded:, html_attributes:, &block
    }

    erb_template <<-ERB
      <%= tag.div(class: "queulor_accordion", **html_attributes) { safe_join sections } %>
    ERB
  end
end
