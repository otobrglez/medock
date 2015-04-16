#!/usr/bin/env ruby
# This is simple server. Nothing else.

ENV["PORT"] = ENV["PORT"] || "2345"

require 'bundler/setup'; Bundler.setup
require 'socket'

def stop_server
  puts "Server stoped."
  exit 0
end

trap("SIGTERM") { stop_server }
trap("SIGINT") { stop_server }

server = TCPServer.new('0.0.0.0', ENV["PORT"].to_i)
$stdout.puts "Server started on #{ENV['PORT']}"

loop do
  socket = server.accept
  request = socket.gets

  $stdout.puts "Got request at #{DateTime.now}\n"
  # STDERR.puts request
  response = "Hello World #{DateTime.now}!\n"

  socket.print "HTTP/1.1 200 OK\r\n" +
               "Content-Type: text/plain\r\n" +
               "Content-Length: #{response.bytesize}\r\n" +
               "Connection: close\r\n"

  socket.print "\r\n"
  socket.print response
  socket.close
end
