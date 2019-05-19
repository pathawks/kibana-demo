def randomDay
	r = [0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 4, 5, 6, 6, 6].sample
	return r * 24 * 60 * 60
end

def randomHour
	r = [0, 0, 0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14, 15, 15, 15, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23].sample
	return r * 60 * 60
end

def randomMinute
	r = rand(60)
	return r * 60
end

def randomSecond
	r = rand(60)
	return r
end

def randomTimeOffset
	return randomDay + randomHour + randomMinute + randomSecond
end
