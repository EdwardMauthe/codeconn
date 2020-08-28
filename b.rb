require 'socket'
#port=2000
port=80
server=TCPServer.new port
loop do
	client=server.accept
	puts client.gets
	# body
	b=""
	b+="<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">"
	b+="<HEAD>"
	b+="<TITLE>This</TITLE>"
	b+="</HEAD>"
	b+="<BODY>"
	b+="<h1>Document</h1>"
	b+="<p>Explanation"
	b+="<p>More stuff"
	b+="</BODY>"
	# header
	h=""
	h+="HTTP/1.0 200\n"
	h+="Content-Type: text/html\n"
	# the reason why the content length need +1 was
	#  that client.puts was being used which put a newline
	#  after the body, hence the extra character
	h+="Content-Length: %d\n"%[b.length]
	h+="\n"
	client.print h+b
	#client.puts ""
	client.close
end
