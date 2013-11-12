get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/color' do
	if request.xhr?
		cell = rand(1..9)
    color = "#" + "%06x" % (rand * 0xffffff)
    content_type :json
    {:cell => cell, :color => color}.to_json #the last line always gets returned
	else
		redirect '/'
  end
  #Create and return a JSON object with the random cell and color given below.
  
end