class Application
 
  def call(env)
    resp = Rack::Response.new
 
    # resp.write "#{num_2}\n"
    # resp.write "#{num_3}\n"
 
    if Time.now.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
 
    resp.finish
  end
 
end