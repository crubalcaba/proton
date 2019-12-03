# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's utility bill.
  class PassportElement::UtilityBill < Types::PassportElement
    include JSON::Serializable

    # Utility bill
    property utility_bill : Proton::Types::PersonalDocument

    def initialize(@utility_bill : Proton::Types::PersonalDocument)
    end
  end
end