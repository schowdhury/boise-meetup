module ServersHelper
  def cache_key_for_servers
    count          = Server.count
    max_updated_at = Server.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "servers/all-#{count}-#{max_updated_at}"
  end
end