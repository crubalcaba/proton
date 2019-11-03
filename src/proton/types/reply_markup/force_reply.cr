# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Instructs clients to force a reply to this message.
  # is_personal [::Bool] True, if a forced reply must automatically be shown to the current user.
  #   For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user
  #   of a reply.
  class ReplyMarkup::ForceReply < Types::ReplyMarkup
    property is_personal : ::Bool

    def initialize(@is_personal : ::Bool)
    end
  end
end
