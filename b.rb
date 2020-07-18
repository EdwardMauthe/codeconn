require 'socket'
#port=2000
port=80
server=TCPServer.new port
loop do
	client=server.accept
	puts client.gets
	#client.puts "Hi"
	#client.puts "GET /\r\n"
	client.puts "<a href=\"/\">test</a>"
	#client.puts ""
	client.close
end
