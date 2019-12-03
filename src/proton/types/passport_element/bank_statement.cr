# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's bank statement.
  class PassportElement::BankStatement < Types::PassportElement
    include JSON::Serializable

    # Bank statement
    property bank_statement : Proton::Types::PersonalDocument

    def initialize(@bank_statement : Proton::Types::PersonalDocument)
    end
  end
end