class Application
  def call(env)
    resp = Rack::Response.new
    rightnow = Time.now
    greeting = "Good "
    rightnow.hour >= 12 ? greeting << "Afternoon!" : greeting << "Morning!"
    resp.write greeting
    resp.finish
  end
end
