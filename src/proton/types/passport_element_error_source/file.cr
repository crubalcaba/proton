# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The file contains an error.
  # The error will be considered resolved when the file changes.
  class PassportElementErrorSource::File < Types::PassportElementErrorSource
    include JSON::Serializable

    # Index of a file with the error
    property file_index : ::Int32

    def initialize(@file_index : ::Int32)
    end
  end
end