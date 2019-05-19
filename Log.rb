require 'json'

class Log
	attr_writer :appId
	attr_writer :class
	attr_writer :contract
	attr_writer :environment
	attr_writer :host
	attr_writer :level
	attr_writer :message

	def initialize
		@timestamp = Time.now
		@type = "test"
	end

	def timestamp=(timestamp)
		throw "timestamp must be a Time" unless timestamp.is_a?(Time)
		@timestamp = timestamp
	end

	def to_json(*a)
		message = {
			"@version"   => "1",
			"@timestamp" => @timestamp.gmtime.xmlschema(3),
		}

		message["@class"]       = @class       if @class
		message["@contract"]    = @contract    if @contract
		message["@environment"] = @environment if @environment
		message["@level"]       = @level       if @level
		message["message"]      = @message     if @message
		message["appId"]        = @appId       if @appId
		message["host"]         = @host        if @host

		message.to_json(*a)
	end

	def to_s(*a)
		to_json(*a)
	end
end
