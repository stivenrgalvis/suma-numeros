require 'sinatra'

get '/' do
  @contador=params[:suma]
  if@contador != nil
    @contador=@contador.to_i
    @contador += 1
  else
    @contador=0
  end
  erb :index
end