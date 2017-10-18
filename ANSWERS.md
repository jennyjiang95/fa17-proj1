# Q0: Why is this error being thrown?
Answer: we haven't defined the pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? * 
Answer: 
In the home_controllers, there is the index function.
`@pokemon = trainerless_pokemon.sample`
Pokemons belong to the same trainer.  Because we use `@pokemon.trainer = current_trainer` in the capture.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Answer: when we click the "throw a pokeball", we are capturing the pokemon. In the `pokemons_controller.rb`, we have the capture method. After we capture it using the method, it will redirect us to the homepage, defined in the `routes.rb`. 

# Question 3: What would you name your own Pokemon?
Answer: You can name your own Pokemon whatever you want 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
Answer: I did `redirect_to trainer_path(id: @pokemon.trainer)` So it will go back to the trainer page. If we don't have a path, then it doesn't know where to go.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Answer: When we give the same name, ti will produce error: "Name has already been taken".
When we give an empty name, ti will produc error: "Name can't be blank".
full_message returns an array of error messages. to_sentence turns array into a sentence.
// referred to :https://stackoverflow.com/questions/15043272/errors-full-messages-format-in-rails-3


# Give us feedback on the project and decal below!
The instruction is a bit confusing but overall very fun!
https://github.com/jennyjiang95/proj1_Shangjun_Jiang



# Extra credit: Link your Heroku deployed app

