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
    class ChannelParticipants < TLObject
      getter constructor_id = 0xf56ee2a8_u32
      
      property count : Int32
      property participants : Array(ChannelParticipant)
      property users : Array(User)
      
      def initialize(
        @count : Int32,
        @participants : Array(ChannelParticipant),
        @users : Array(User)
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@count, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@participants.size, IO::ByteFormat::LittleEndian)
        @participants.each do |val|
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
    
    class ChannelParticipantsNotModified < ChannelParticipants
      getter constructor_id = 0xf0173fe9_u32
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
    
    class ChannelParticipant < TLObject
      getter constructor_id = 0xd0d9b163_u32
      
      property participant : ChannelParticipant
      property users : Array(User)
      
      def initialize(
        @participant : ChannelParticipant,
        @users : Array(User)
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write(@participant.to_bytes)
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
    
    class AdminLogResults < TLObject
      getter constructor_id = 0xed8af74d_u32
      
      property events : Array(ChannelAdminLogEvent)
      property chats : Array(Chat)
      property users : Array(User)
      
      def initialize(
        @events : Array(ChannelAdminLogEvent),
        @chats : Array(Chat),
        @users : Array(User)
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@events.size, IO::ByteFormat::LittleEndian)
        @events.each do |val|
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