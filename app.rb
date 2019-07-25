require 'syro'
require 'json'

App = Syro.new do
  get do
    res.json(
      JSON.dump(
        {
          host: `hostname`.strip,
          now: Time.now.utc.to_json
        }
      )
    )
  end
end
