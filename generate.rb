require_relative "order"
require_relative "random"

for i in 1..35000 do
	startDate = Time.parse('2019-05-13T18:30:00.000-0500') + randomTimeOffset
	order(startDate)
end
