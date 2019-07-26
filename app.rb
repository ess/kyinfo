require 'syro'
require 'json'

App = Syro.new do
  get do
    spawn(File.join(File.dirname(__FILE__), "stress"))

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
