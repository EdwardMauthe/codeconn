require "pg"
# import the namespace used in "pg" module
include PG
puts "hello"
puts "version: "+PG.library_version.to_s
#conn=PG.Connection.new(:dbname="root",:host=>localhost)
#conn=PG.connect(dbname:'root')
v=PG::Connection.ping(:host=>"localhost")
case v
when PQPING_OK
	puts "PONGED"
else
	puts "another error"
end
