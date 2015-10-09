class Recipe 
  include http_party
  
  key_value = ENV["FOOD2FORK_KEY"]
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  format :json
  
  def self.for(ingredient)
  	get('/search', query: {q: ingredient})['recipes']
  end
end