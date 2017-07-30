class Timer
  
	def seconds
		@timer = 0
	end

	def seconds= time
		@timer = time
	end

	def time_string
		if @timer < 60
			@timer = Time.new(1999, 1, 1, 0, 0, @timer)
			@timer.strftime("%H:%M:%S").to_s
		elsif @timer < 3600
			minute = @timer / 60
			second = @timer % 60
			@timer = Time.new(1999, 1, 1, 0, minute, second)
			@timer.strftime("%H:%M:%S").to_s
		else
			hour = @timer / 60 / 60
			minute = (@timer / 60) % 60
			second = @timer % ((60 * 60) + minute * 60)
			@timer = Time.new(1999, 1, 1, hour, minute, second)
			@timer.strftime("%H:%M:%S").to_s
		end
	end

	def padded time
		if time.to_s.length <2
			time = '0' + time.to_s
		else
			time = time.to_s
		end
	end

end
