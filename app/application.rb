class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World"

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if [num_1, num_2, num_3].uniq.count == 1
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
  end

  resp.finish
end
