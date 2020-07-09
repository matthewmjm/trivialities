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
        puts "\n\n"
        puts "Hi #{user}!!"
        sleep(1)
        puts "\n\n"
        puts "#{user} you are set!   Let do it!"
        sleep(1)
        puts "🤓 Here we go...."
        sleep(2)
        system "clear"
        main_menu
    end

    def main_menu
        system "clear"
        puts "MAIN MENU\n\n"
        puts "What Would You Like to Do? 🤔\n"
        puts "1. Create My Trivia Quiz! 👷‍♀️👷‍♂️"
        puts "2. Show Me the Money! 💰"
        puts "3. Delete Me from the Leaderboard! ❌"
        puts "4. I'm Outta Here! 🏄‍♂️🏄‍♀️\n"

        
    end


end