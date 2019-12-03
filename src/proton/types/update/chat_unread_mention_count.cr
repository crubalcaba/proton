# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat unread_mention_count has changed.
  class Update::ChatUnreadMentionCount < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # The number of unread mention messages left in the chat
    property unread_mention_count : ::Int32

    def initialize(@chat_id : ::Int64, @unread_mention_count : ::Int32)
    end
  end
end