class AvatarService

  def members_of_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=${Nation+Name}")
    parsed_response = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn ||= Faraday.new(url: "https://last-airbender-api.herokuapp.com/") do |req|
      req.adapter Faraday.default_adapter
    end
    @conn
  end
end