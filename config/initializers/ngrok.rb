require 'net/http'
require 'json'

begin
  uri = URI("http://127.0.0.1:4040/api/tunnels")
  ngork_resp = Net::HTTP.get(uri)
  ngork_json = JSON.parse(ngork_resp)
  tunnel = ngork_json["tunnels"].first
  tunnel_uri = URI(tunnel["public_url"])
  Rails.application.configure do
    config.hosts << tunnel_uri.host
    config.action_controller.asset_host = tunnel_uri.to_s
    config.action_mailer.asset_host = config.action_controller.asset_host
  end
  puts "Yep, tunnel configured! all set on #{tunnel_uri.to_s}"
rescue
  puts "no tunnel configured! skiping configuration..."
end