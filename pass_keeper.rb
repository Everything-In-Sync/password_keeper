require 'launchy'
require 'clipboard'

puts "Would you like to search for login information or add a new login? (type search or new)"
search_or_new = gets.chomp
search_or_new.downcase
if search_or_new == "new"
  puts "Which website? Facebook, Google, and Instagram are the only sites currently supported" #get's website info from user [ 3 lines
  website = gets.chomp
  website.downcase #]
  if website == "google"

    a = ["!","@","#","$","%","^","&","*"].sample(12) #this block of code generates a random secure password [ 7 lines
    b = [*('a'..'z')].sample(12)
    c = [*('0'..'9')].sample(12)
    d = [*('A'..'Z')].sample(12)
    e = (a) + (b) + (c) + (d)
    f = e.sample(12)
    google_password = f.join # ]

    puts "What is the url?"
    google_url = gets.chomp
    puts "What is the Username?"
    google_username = gets.chomp

    class Google
      attr_accessor :url, :username, :password #sets parameters

      def initialize(url, un, pwd)
        @url = url
        @username = un
        @password = pwd
      end
      def show_info #gathers all login information to either print or save to file.
        "URL: #{url} Username: #{username} Password: #{password}"
      end
      def change_info(url, un, pwd) #used to change login information when feature is added in the future
        @url = url
        @username = un
        @password = pwd
      end
    end
    google_login = Google.new(google_url , google_username , google_password) #saves all login information to variable
    puts google_login.show_info
    Clipboard.copy(google_password)

    configFile = File.open("pass_keeper.txt", "a") #opens file. "a" adds to file without deleting anything
    configFile.write("#{google_login.show_info}")
    configFile.write "\n"
    configFile.close #closes the file
    puts "file saved" #shows success
    puts "Would you like to go to login? (y/n)"
    google_login_response = gets.chomp
    google_login_response.downcase
    if google_login_response == "y"
      Launchy.open(google_url)
    else
      puts "Okay"
    end

  elsif website == "facebook"
    a = ["!","@","#","$","%","^","&","*"].sample(12)
    b = [*('a'..'z')].sample(12)
    c = [*('0'..'9')].sample(12)
    d = [*('A'..'Z')].sample(12)
    e = (a) + (b) + (c) + (d)
    f = e.sample(12)
    facebook_password = f.join

    puts "What is the url?"
    facebook_url = gets.chomp
    puts "What is the Username?"
    facebook_username = gets.chomp

    class Facebook
      attr_accessor :url, :username, :password

      def initialize(url, un, pwd)
        @url = url
        @username = un
        @password = pwd
      end
      def show_info
        "URL: #{url} Username: #{username} Password: #{password}"
      end
      def change_info(url, un, pwd)
        @url = url
        @username = un
        @password = pwd
      end
    end
    facebook_login = Facebook.new(facebook_url , facebook_username , facebook_password)
    puts facebook_login.show_info
    Clipboard.copy(facebook_password)

    configFile = File.open("pass_keeper.txt", "a") #opens file. "a" adds to file without deleting anything
    configFile.write("#{facebook_login.show_info}")
    configFile.write "\n"
    configFile.close #closes the file
    puts "file saved"
    puts "Would you like to go to login? (y/n)"
    facebook_login_response = gets.chomp
    facebook_login_response.downcase
    if facebook_login_response == "y"
      Launchy.open(facebook_url)
    else
      puts "Okay"
    end
  elsif website == "instagram"
    a = ["!","@","#","$","%","^","&","*"].sample(12)
    b = [*('a'..'z')].sample(12)
    c = [*('0'..'9')].sample(12)
    d = [*('A'..'Z')].sample(12)
    e = (a) + (b) + (c) + (d)
    f = e.sample(12)
    instagram_password = f.join

    puts "What is the url?"
    instagram_url = gets.chomp
    puts "What is the Username?"
    instagram_username = gets.chomp

    class Facebook
      attr_accessor :url, :username, :password

      def initialize(url, un, pwd)
        @url = url
        @username = un
        @password = pwd
      end
      def show_info
        "URL: #{url} Username: #{username} Password: #{password}"
      end
      def change_info(url, un, pwd)
        @url = url
        @username = un
        @password = pwd
      end
    end
    instagram_login = Facebook.new(instagram_url , instagram_username , instagram_password)
    puts instagram_login.show_info
    Clipboard.copy(instagram_password)

    configFile = File.open("pass_keeper.txt", "a") #opens file. "a" adds to file without deleting anything
    configFile.write("#{instagram_login.show_info}")
    configFile.write "\n"
    configFile.close #closes the file
    puts "file saved"
    puts "Would you like to go to login? (y/n)"
    instagram_login_response = gets.chomp
    instagram_login_response.downcase
    if instagram_login_response == "y"
      Launchy.open(instagram_url)
    else
      puts "Okay"
    end
  else puts "We do not support that site yet"
  end
end
