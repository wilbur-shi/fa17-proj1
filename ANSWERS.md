# Q0: Why is this error being thrown?
This error is being thrown because we have not created a HomeController yet, so when we try to route to home#index, the app does not know where to go.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 
The random pokemon are appearing because we have called seeds.rb to generate some trainerless pokemon, and the index method in HomeController gets all of these pokemon where the trainer attribute is nil. That is the commont factor between all the pokemon that can appear.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This is creating a button in the html with the text "Throw a Pokeball!". When pressed, it will find the capture_path that we have defined in our routes.rb. In this case, it goes to the patch request at home/capture which goes to the capture function in PokemonsController.

# Question 3: What would you name your own Pokemon?
I would give my own pokemon names related to their abilities.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer_path, but made sure to add the current_trainer.id to the params as :id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This will populate the flash dictionary with the error message corresponding to the key :error. The file application.html.erb will then render the error messages in the flash dictionary.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://pokeportalrails.herokuapp.com/