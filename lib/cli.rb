class Cli

    def welcome
        system "clear"
        puts "Welcome to Trivialities"
        sleep(1.5)
    end

    def log_in
        system "clear"
        puts "Let's get this going!\n"
        puts "To start off, what is your name?"
        user = gets.strip
        $user = user
        puts "\n\n"
        puts "Hi #{user}!!"
        sleep(1)
        puts "\n\n"
        puts "#{$user} you are set!   Let do it!"
        sleep(1)
        puts "🤓 Here we go...."
        sleep(2)
        system "clear"
    end

    def create_quiz
        system "clear"
        sleep(0.5)
        puts "yo yo yo....here we go...\n\n"
        sleep(0.5)
        puts "Let's choose a topic for the questionionies:\n"
        sleep(0.5)
        puts "1, General Knowledge"
        puts "2. Entertainment: Books"
        puts "3. Entertainment: Film"
        puts "4. Entertainment: Music"
        puts "5. Entertainment: Television"
        puts "6. Science & Nature"
        puts "7. Sports"
        puts "8. History"
        puts "9. Celebrities"
        puts "10. Animals\n\n"
        puts "\nChoice\n"
        category_choice = gets.strip
        puts category_choice
        sleep(2)


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
            puts "SHOW ME DA MONEY!!"
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