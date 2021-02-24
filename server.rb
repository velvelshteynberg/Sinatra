require 'sinatra'
name = "Velvel Shteynberg"
movies = ["Star Wars", "Five Alive", "Harry Potter"]

get '/About' do 
    @name = name
    erb :about
end 

get '/DisplayMovies' do 
    @movies = movies
    erb :DisplayMovies
end 

get '/CreateNewMovie' do
    #This is the route that takes the user to the form that asks you which movie youd like to create
    erb :CreateNewMovie
end 

post '/AddMovie' do
    
    new_movie = params["movie"]
    movies.push(new_movie)
    redirect to('/DisplayMovies')
end 

