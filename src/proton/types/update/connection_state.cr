# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The connection state has changed.
  # state [Proton::Types::ConnectionState] The new connection state.
  class Update::ConnectionState < Types::Update
    property state : Proton::Types::ConnectionState

    def initialize(@state : Proton::Types::ConnectionState)
    end
  end
end
