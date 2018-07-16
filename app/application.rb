class Application

  def call(env)
    t = Time.now
    resp = Rack::Response.new
    if  t.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
