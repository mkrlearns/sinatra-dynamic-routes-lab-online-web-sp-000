require_relative 'config/environment'

class App < Sinatra::Base
  get('/reversename/:name') {"#{params[:name].reverse}"}
  get('/square/:num') {"#{params[:num].to_i ** 2}"}
  get('/say/:num/:str') {"#{params[:str] * params[:num].to_i}"}

  get '/say/:a/:b/:c/:d/:e' do
    "#{params[:a]} #{params[:b]} #{params[:c]} #{params[:d]} #{params[:e]}."
  end

  get '/:op/:num1/:num2' do
    op = {'add'=>'+','subtract'=>'-','divide'=>'/','multiply'=>'*'}[params[:op]]
    "#{params[:num1].to_i.send(op,params[:num2].to_i)}"
  end

end
