require 'json'
s='{"data":true}'
obj=JSON.parse(s)
#puts obj
puts obj['data']
def test()
	puts "cool"
end
test()

class Survey
	def new()
	end
	def get(s,&callback)
		puts "assigned get"
		puts "route "+s
		callback.call 'neat','also'
		# another way
		#callback.('neat','also')
	end
end
app=Survey.new
app.get('/api'){|req,res|
	puts "hello "+req+" "+res
}

require 'securerandom'
puts SecureRandom.uuid
