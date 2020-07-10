class Cli

    def welcome
        system "clear"
        puts "Welcome to Trivialities"
        sleep(1.5)
    end

    def log_in
        system "clear"
        puts "Let's get this going!\n"
        puts "To start off, what is your name so we know who we are dealing with here 😉 ?"
        user = gets.strip
        $user = user
        puts "\n\n"
        system "clear"
        sleep(0.15)
        puts "Hi #{user}!!"
        sleep(1)
        puts "\n\n"       
        system "clear"
        sleep(0.5)
        puts "#{$user}, you are set!   Let do it!"
        puts "\n\n"
        sleep(1)
        puts "🤓 Here we go...."
        sleep(2)
        system "clear"
    end

    def api_call
        quiz_response = RestClient.get($api_query)
        quiz_data = JSON.parse(quiz_response)
        puts quiz_data["results"]
    end

    def create_quiz
        system "clear"
        puts "QUIZTIME"
        sleep(0.5)
        puts "YAZZzzzz!....so here we go...\n\n"
        sleep(0.5)
        puts "Let's choose a topic for the questionionies:\n"
        sleep(0.5)
        category_selection = []
        category_code = []
        category_selection = ["General Knowledge", "Entertainment: Books", "Entertainment: Film", "Entertainment: Music", "Entertainment: Television", "Science & Nature", "Sports", "History", "Celebrities", "Animals"]
        category_code = [9, 10, 11, 12, 14, 17, 21, 23, 26, 27]
        puts "1. General Knowledge 🧐"
        puts "2. Books 📚"
        puts "3. Film 🎥"
        puts "4. Music 🎸"
        puts "5. Television 📺"
        puts "6. Science & Nature 🔬"
        puts "7. Sports 🏈"
        puts "8. History 📅"
        puts "9. Celebrities 😎"
        puts "10. Animals 🐕\n\n"
        puts "\nAnd your choice?\n"
        category_choice = gets.strip
        puts "\n"
        category_selection = category_selection[category_choice.to_i-1]
        puts category_selection
        category_code = category_code[category_choice.to_i-1]
        puts "Great choice, #{$user}!"
        sleep(1.5)
        system "clear"
        puts "Okay, now you get to choose the difficulty level.\n"
        sleep(1.0)
        puts "🙃 Or in other words, how hard do you wanna use you noggin? 🧠\n\n"
        sleep(1)
        puts "Okay?  Here goes:\n"
        sleep(0.5)
        difficulty_selection = []
        difficulty_selection = ["easy", "medium", "hard"]
        puts "1. Easy Peezy 😁  10 points/correct response"
        puts "2. Medium/Just Right 🙂  20 points/correct response"
        puts "3. Hard/Are you Kiddin Me? 😫  30 points/correct response\n\n"
        puts "\nAnd your choice?\n"
        difficulty_choice = gets.strip
        puts "\n"
        difficulty_selection = difficulty_selection[difficulty_choice.to_i-1]
        puts difficulty_selection
        puts "Excellent choice, #{$user}!"
        sleep(1.5)
        system "clear"
        puts "Right on, #{$user}, just to confirm..."
        sleep(0.25)
        puts "so we have it right.\n\n"
        puts "\n"
        sleep(0.5)
        puts "Presenting..."
        sleep(0.5)
        puts "...y'all's choices: 😁\n\n"
        sleep(0.5)
        puts "category: #{category_selection}"
        sleep(0.5)
        puts "difficulty: #{difficulty_selection}"
        puts "\n\n"
        sleep(1.5)
        puts "We good?"
        sleep(0.5) 
        puts "Or you wanna shake these questionionies up another way?\n"
        sleep(1.0)
        puts "1. Let's Rock! 🤘"
        puts "2. Err? Ya know, I need another bite at the apple 🍎"
        puts "3. What was I thinking?...Take me back to the Main Menu 🥴\n\n"
        sleep(0.5)
        puts "Whatcha think?\n"
        redo_selection = gets.strip
        sleep(1.0)
        puts "\n\n"
        system "clear"
        if redo_selection == "2"
            create_quiz
        elsif redo_selection == "3"
            main_menu
        else puts "LET'S ROLL!!"
        end
        sleep(1.5)
        puts "\n\n\n"
        # system "clear"
        sleep(0.15)
        puts "W"
        sleep(0.15)
        system "clear"
        puts "WO" 
        sleep(0.15)      
        system "clear"
        puts "WOR" 
        sleep(0.15)      
        system "clear"
        puts "WORK"
        sleep(0.15)       
        system "clear"
        puts "WORKI" 
        sleep(0.15)      
        system "clear"
        puts "WORKIN"
        sleep(0.15)       
        system "clear"
        puts "WORKING"
        sleep(0.15)       
        system "clear"
        puts "WORKING O"
        sleep(0.15)       
        system "clear"
        puts "WORKING ON" 
        sleep(0.15)      
        system "clear"
        puts "WORKING ON I"
        sleep(0.15)            
        system "clear"
        puts "WORKING ON IT"
        sleep(0.15)             
        system "clear"
        puts "WORKING ON IT."
        sleep(0.15)             
        system "clear"
        puts "WORKING ON IT.." 
        sleep(0.15)            
        system "clear"
        puts "WORKING ON IT..."      
        sleep(2.0)
        system "clear"
        $api_query = ""
        $api_query = "https://opentdb.com/api.php?amount=10&category=#{category_code}&difficulty=#{difficulty_selection}&type=multiple"
        puts $api_query
        sleep(1.0)
        api_call
    end

    def main_menu
        system "clear"
        puts "MAIN MENU\n\n"
        puts "What Would You Like to Do? 🤔\n"
        puts "1. Create My Trivia Quiz! 👷‍♀️👷‍♂️"
        puts "2. Show Me the Money! 💰"
        puts "3. Delete Me from the Leaderboard! ❌"
        puts "4. I'm Outta Here! 🏄‍♂️🏄‍♀️\n"
        puts "\nChoice\n"
        main_choice = gets.strip
        if main_choice == "1"
            system "clear"
            sleep(0.5)
            puts "QUIZTIME"
            sleep(0.5)
            create_quiz
        elsif main_choice == "2"
            system "clear"
            sleep(0.5)
            puts "SHOW ME THE MONEY!!"
        elsif main_choice == "3"
            system "clear"
            sleep(0.5)
            puts "DELETE"
        elsif main_choice == "4"
            system "clear"
            sleep(1)
            puts "Goodbye #{$user}!!"
            sleep(0.5)
            puts "Come back soon!"
            sleep(3.0)
            return "goodbye!"
        else
            puts "OOOPS...INVALID SELCTION"
            sleep(0.5)
            puts "Let's Try This Again"
            sleep(1.5)
            return main_menu
        end



        
    end


end