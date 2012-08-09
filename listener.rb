require 'rubygems'
require 'listen'
Listen.to('/home/sp/pdf', :filter => /\.pdf$/) do |modified, added, removed|
	`git add -A`
	`git commit -m 'hola mundo'`
end
