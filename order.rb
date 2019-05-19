require 'securerandom'
require_relative "Index"
require_relative "Log"

@index = Index.new

def order(time)

	contract = SecureRandom.uuid

	log = Log.new
	log.host = ["ul4276", "ul4277", "ul4278", "ul4279"].sample
	log.timestamp = time
	log.contract = contract
	log.message = "New order received"

	puts @index
	puts log

	time += 0.01

	if (rand(200) == 0) then
		time += 0.01 + rand(255) / 2560.0
		log.timestamp = time
		log.level = "WARN"
		log.message = "Failed to validate request"
		puts @index
		puts log
		return
	end

	time += rand(15) / 9.0
	log.timestamp = time
	log.message = "Updating database"
	puts @index
	puts log
	if (rand(300) == 0) then
		time += 0.01 + rand(255) / 2560.0
		log.timestamp = time
		log.level = "ERROR"
		log.message = "Unable to commit transaction to database"
		puts @index
		puts log
		return
	end

	time += rand(15) / 7.0
	log.timestamp = time
	log.message = "Database update complete"
	puts @index
	puts log

	time += rand(15) / 9.0
	log.timestamp = time
	log.message = "Sending order to queue"
	puts @index
	puts log
	if (rand(70) == 0) then
		time += 1.0 + rand(255) / 25.0
		log.timestamp = time
		log.level = "ERROR"
		log.message = "Unable to send order to queue"
		puts @index
		puts log
		return
	end

	time += 2.0 + rand(15) / 7.0
	log.timestamp = time
	log.message = "Order placed successfully"
	puts @index
	puts log
end
