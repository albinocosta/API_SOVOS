module Createuser
    include HTTParty
    base_uri CONFIG['url_padrao']
    format :json 
    headers Accept: 'application/json',
    'Content-Type': 'application/json'   
end