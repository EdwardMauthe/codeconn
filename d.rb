=begin
s=Mutex.new
a=Thread.new{
	s.synchronize{
		puts('cool')
	}
}
# now block until end
a.join
=end
thrs=[]
thrs<<Thread.new{
	puts 'a'
}
thrs<<Thread.new{
	4.times{
		puts 'hi'
	}
}
# block each thread until end
thrs.each{|thr|
	thr.join
}

f=Fiber.new{|arg|
	Fiber.yield arg+1
	arg+2
}
puts f.resume 1
# when resume again the previous arg is used, so if the second
#  one is used still the previous arg is returned
puts f.resume
