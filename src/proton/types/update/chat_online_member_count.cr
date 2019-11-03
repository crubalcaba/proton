# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The number of online group members has changed.
  # This update with non-zero count is sent only for currently opened chats.
  # There is no guarantee that it will be sent just after the count has changed.
  # chat_id [::Int64] Identifier of the chat.
  # online_member_count [::Int32] New number of online members in the chat, or 0 if unknown.
  class Update::ChatOnlineMemberCount < Types::Update
    property chat_id : ::Int64
    property online_member_count : ::Int32

    def initialize(@chat_id : ::Int64, @online_member_count : ::Int32)
    end
  end
end
