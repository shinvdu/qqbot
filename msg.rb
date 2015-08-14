#!/usr/bin/env ruby

require 'open-uri'
require 'uri'

if ARGV.count < 1
	raise '必须输入信息' 
end

msg = URI.escape(ARGV[0])
url = "http://blog.sky-city.me:3333/send?type=group&to=%E7%BA%A2%E7%9A%87%E5%90%8E&token=xxxx&msg=#{msg}"
response = open(url).read
puts response
