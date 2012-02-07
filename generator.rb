require 'sinatra'



get '/' do 
	erb :gen
end

post '/gen' do 
	@clase = params['clase']
	@clase_s = params['clase_s']
	@claseUP = @clase_s.capitalize
	tags = params['fields']
	@fields = tags.split(",").each {|t| t.strip!}
	erb :genresult
end