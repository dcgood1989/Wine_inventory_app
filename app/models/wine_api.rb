class WineApi

  def initialize
    @conn = Faraday.new(:url => 'http://services.wine.com/api/beta2/service.svc/format/resource?apikey=key&parameters')
  end

def projects(token)
  response = @conn.get do |req|
    req.url "/services/v5/projects"
    req.headers['Content-Type'] = 'application/json'
    req.headers['X-TrackerToken'] = token
  end
  JSON.parse(response.body, symbolize_names: true)
end

end
