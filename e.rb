require 'mysql2'
client=Mysql2::Client.new(:host=>"127.0.0.1")
results=client.query("show databases;")
#puts results
# print results each row
results.each do |row|
	puts row["Database"]
end
# print the fields from the last command
puts results.fields
