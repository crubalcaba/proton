# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A text paragraph.
  class PageBlock::Paragraph < Types::PageBlock
    include JSON::Serializable

    # Paragraph text
    property text : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText)
    end
  end
end