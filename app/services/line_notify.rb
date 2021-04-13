require "net/http"

class LineNotify
  ENDPOINT = "https://notify-api.line.me/api/notify"

  attr_accessor :token

  def initialize(token)
    @token = token
  end

  def notify(data)
    uri = URI.parse(ENDPOINT)
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true

    req = request(uri)

    req.set_form_data(data)
    res = https.request(req)

    res
  end

  private def request(uri)
    req = Net::HTTP::Post.new(uri.request_uri)
    req["Authorization"] = "Bearer #{@token}"
    req["Content-Type"] = "application/x-www-form-urlencoded;charset=UTF-8"

    req
  end
end
