# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The current user has connected a website by logging in using Telegram Login Widget on it.
  # domain_name [::String] Domain name of the connected website.
  class MessageContent::WebsiteConnected < Types::MessageContent
    property domain_name : ::String

    def initialize(@domain_name : ::String)
    end
  end
end
