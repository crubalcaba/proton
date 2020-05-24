# Copyright 2020 - Chris Watson <cawatson1993@gmail.com>
#
# You should have received with this program a copy of the MIT license. This code is
# subject to the terms and conditions outlined in said license. For more information,
# please see https://en.wikipedia.org/wiki/MIT_License.
#
# This file was autogenerated. Please do not modify directory.
require "../../helpers"
require "../../tl_object"

module Proton
  module TL
    class State < TLObject
      getter constructor_id = 0xa56c2a3e_u32
      
      property pts : Int32
      property qts : Int32
      property date : Int32
      property seq : Int32
      property unread_count : Int32
      
      def initialize(
        @pts : Int32,
        @qts : Int32,
        @date : Int32,
        @seq : Int32,
        @unread_count : Int32
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@pts, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@qts, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@date, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@seq, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@unread_count, IO::ByteFormat::LittleEndian)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class DifferenceEmpty < Difference
      getter constructor_id = 0x5d75a138_u32
      
      property date : Int32
      property seq : Int32
      
      def initialize(
        @date : Int32,
        @seq : Int32
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@date, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@seq, IO::ByteFormat::LittleEndian)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class Difference < TLObject
      getter constructor_id = 0x00f49ca0_u32
      
      property new_messages : Array(Message)
      property new_encrypted_messages : Array(EncryptedMessage)
      property other_updates : Array(Update)
      property chats : Array(Chat)
      property users : Array(User)
      property state : State
      
      def initialize(
        @new_messages : Array(Message),
        @new_encrypted_messages : Array(EncryptedMessage),
        @other_updates : Array(Update),
        @chats : Array(Chat),
        @users : Array(User),
        @state : State
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@new_messages.size, IO::ByteFormat::LittleEndian)
        @new_messages.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@new_encrypted_messages.size, IO::ByteFormat::LittleEndian)
        @new_encrypted_messages.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@other_updates.size, IO::ByteFormat::LittleEndian)
        @other_updates.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@chats.size, IO::ByteFormat::LittleEndian)
        @chats.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@users.size, IO::ByteFormat::LittleEndian)
        @users.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write(@state.to_bytes)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class DifferenceSlice < Difference
      getter constructor_id = 0xa8fb1981_u32
      
      property new_messages : Array(Message)
      property new_encrypted_messages : Array(EncryptedMessage)
      property other_updates : Array(Update)
      property chats : Array(Chat)
      property users : Array(User)
      property intermediate_state : State
      
      def initialize(
        @new_messages : Array(Message),
        @new_encrypted_messages : Array(EncryptedMessage),
        @other_updates : Array(Update),
        @chats : Array(Chat),
        @users : Array(User),
        @intermediate_state : State
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@new_messages.size, IO::ByteFormat::LittleEndian)
        @new_messages.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@new_encrypted_messages.size, IO::ByteFormat::LittleEndian)
        @new_encrypted_messages.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@other_updates.size, IO::ByteFormat::LittleEndian)
        @other_updates.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@chats.size, IO::ByteFormat::LittleEndian)
        @chats.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@users.size, IO::ByteFormat::LittleEndian)
        @users.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write(@intermediate_state.to_bytes)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class DifferenceTooLong < Difference
      getter constructor_id = 0x4afe8f6d_u32
      
      property pts : Int32
      
      def initialize(
        @pts : Int32
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@pts, IO::ByteFormat::LittleEndian)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class ChannelDifferenceEmpty < ChannelDifference
      getter constructor_id = 0x3e11affb_u32
      
      property pts : Int32
      property final : Bool?
      property timeout : Int32?
      
      def initialize(
        @pts : Int32,
        @final : Bool = false,
        @timeout : Int32? = nil
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_byte(@final ? 0 : 0)
        buffer.write_byte(@timeout ? 1 : 0)
        buffer.write_bytes(@pts, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@timeout, IO::ByteFormat::LittleEndian)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class ChannelDifferenceTooLong < ChannelDifference
      getter constructor_id = 0xa4bcc6fe_u32
      
      property dialog : Dialog
      property messages : Array(Message)
      property chats : Array(Chat)
      property users : Array(User)
      property final : Bool?
      property timeout : Int32?
      
      def initialize(
        @dialog : Dialog,
        @messages : Array(Message),
        @chats : Array(Chat),
        @users : Array(User),
        @final : Bool = false,
        @timeout : Int32? = nil
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_byte(@final ? 0 : 0)
        buffer.write_byte(@timeout ? 1 : 0)
        buffer.write_bytes(@timeout, IO::ByteFormat::LittleEndian)
        buffer.write(@dialog.to_bytes)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@messages.size, IO::ByteFormat::LittleEndian)
        @messages.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@chats.size, IO::ByteFormat::LittleEndian)
        @chats.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@users.size, IO::ByteFormat::LittleEndian)
        @users.each do |val|
          builder.write(val.to_bytes)
        end
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class ChannelDifference < TLObject
      getter constructor_id = 0x2064674e_u32
      
      property pts : Int32
      property new_messages : Array(Message)
      property other_updates : Array(Update)
      property chats : Array(Chat)
      property users : Array(User)
      property final : Bool?
      property timeout : Int32?
      
      def initialize(
        @pts : Int32,
        @new_messages : Array(Message),
        @other_updates : Array(Update),
        @chats : Array(Chat),
        @users : Array(User),
        @final : Bool = false,
        @timeout : Int32? = nil
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_byte(@final ? 0 : 0)
        buffer.write_byte(@timeout ? 1 : 0)
        buffer.write_bytes(@pts, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@timeout, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@new_messages.size, IO::ByteFormat::LittleEndian)
        @new_messages.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@other_updates.size, IO::ByteFormat::LittleEndian)
        @other_updates.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@chats.size, IO::ByteFormat::LittleEndian)
        @chats.each do |val|
          builder.write(val.to_bytes)
        end
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@users.size, IO::ByteFormat::LittleEndian)
        @users.each do |val|
          builder.write(val.to_bytes)
        end
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
  end
end