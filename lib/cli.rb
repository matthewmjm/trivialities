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
            puts "QUIZTIME"
        elsif main_choice == "2"
            puts "SHOW ME DA MONEY!!"
        elsif main_choice == "3"
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