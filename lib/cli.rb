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
    end

end