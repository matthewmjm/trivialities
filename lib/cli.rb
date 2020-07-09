class Cli

    def welcome
        system "clear"
        puts "Welcome to Trivialities"
        sleep(1.5)
    end

    def log_in
        system "clear"
        puts "Let's get this going!\n"
        puts "To start off, what is your name?:      "
        user = gets.strip
        puts "\n\n"
        puts "Hi #{user}!!"
        sleep(1)
        puts "\n\n"
        puts "Now, before we start, we just need to ask you how you would like your trivia served-up:"
        sleep(5)
        system "clear"
    end


end