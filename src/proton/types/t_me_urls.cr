# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of t.me URLs.
  class TMeUrls < Types::Base
    include JSON::Serializable

    # List of URLs
    property urls : ::Array(Proton::Types::TMeUrl)

    def initialize(@urls : ::Array(Proton::Types::TMeUrl))
    end
  end
end