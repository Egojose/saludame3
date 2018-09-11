require "sinatra"

get '/' do 
    unless params[:nombre]
    "Hola mundo"
    else 
        "Hola #{params[:nombre]}"
    end  
    
    <<-HTML
    <h1>"Hola, a quien quiere saludar"</h1>
        <form action="/nuevo/objeto" method="post">
            <input type="text" name="verbo"></input>
            <input type="submit" value="Hola!"></input>
        </form>

    HTML
end

get '/:nombre' do
    "Hola #{params[:nombre]}"
end

post '/nuevo/objeto' do
    "Hola #{params[:verbo]}"
end