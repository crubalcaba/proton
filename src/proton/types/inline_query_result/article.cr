# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to an article or web page.
  class InlineQueryResult::Article < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # URL of the result, if it exists
    property url : ::String

    # True, if the URL must be not shown
    property hide_url : ::Bool

    # Title of the result
    property title : ::String

    # A short description of the result
    property description : ::String

    # Result thumbnail; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@id : ::String, @url : ::String, @hide_url : ::Bool, @title : ::String, @description : ::String, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end