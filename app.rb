require 'socket'
require_relative 'note'
# ip: 192.168.50.191
# Anna's ip:  192.168.51.37
# To allow connections from same network: 
# TCPServer.new("0.0.0.0", 2345)
# Get partner to connect: telnet 192.168.50.191 2345

server = TCPServer.new(2345) #TCP server socket @ PORT 2345

socket = server.accept #wait for client to connect

loop do    
  
  socket.puts "What do you say?"

  they_said = socket.gets.chomp

  socket.puts "You said: #{they_said}. Goodbye!"

  socket.close if they_said == 'quit'
    
end
