module Haml
  module Filters
    module CustomRedCloth
      include Haml::Filters::Base
      lazy_require 'custom_tags'
      
      def render(text)
        red_cloth = ::RedCloth.new(text)
        red_cloth.hard_breaks = false
        red_cloth.extend CustomTags
        red_cloth.to_html
      end
    end
  end
end