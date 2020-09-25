module Retrieveuser
    include HTTParty
    base_uri CONFIG['url_padrao']
    format :json 
    headers Accept: 'application/json'
end