#Facepalm because this is late....

# ............................................________
# ....................................,.-‘”...................``~.,
# .............................,.-”...................................“-.,
# .........................,/...............................................”:,
# .....................,?......................................................\,
# .................../...........................................................,}
# ................./......................................................,:`^`..}
# .............../...................................................,:”........./
# ..............?.....__.........................................:`.........../
# ............./__.(.....“~-,_..............................,:`........../
# .........../(_....”~,_........“~,_....................,:`........_/
# ..........{.._$;_......”=,_.......“-,_.......,.-~-,},.~”;/....}
# ...........((.....*~_.......”=-._......“;,,./`..../”............../
# ...,,,___.\`~,......“~.,....................`.....}............../
# ............(....`=-,,.......`........................(......;_,,-”
# ............/.`~,......`-...............................\....../\
# .............\`~.*-,.....................................|,./.....\,__
# ,,_..........}.>-._\...................................|..............`=~-,
# .....`=~-,_\_......`\,.................................\
# ...................`=~-,,.\,...............................\
# ................................`:,,...........................`\..............__
# .....................................`=-,...................,%`>--==``
# ........................................_\..........._,-%.......`\
# ...................................,<`.._|_,-&``................`\

class Person
  attr_accessor :name, :phone, :address, :position, :slack, :github

  def initialize(name, phone, address, position, slack, github)
    @name = name
    @phone = phone
    @address = address
    @position = position
    @position = slack
    @github = github
  end
end
class Menu
  def initialize
    @people = []
  end

  def prompt
    loop do
      puts "Welcome to the TIY Database!"
      puts "For adding personnel, press A"
      puts "For searching, press S"
      puts "For deleting, press D"
      puts "To exit, press E"
      choice = gets.chomp
        if choice == "E"
          break
        elsif choice == "A"
          puts "Enter a name"
          name = gets.chomp
          puts "What is your phone number?"
          phone = gets.chomp
          puts "What is your address"
          address = gets.chomp
          puts "What is your work position?"
          position = gets.chomp
          puts "What is your Slack ID?"
          slack = gets.chomp
          puts "What is your github account?"
          github = gets.chomp
          person = Person.new(name, phone, address, position, slack, github)
          @people << person

        elsif choice == "S"
          puts "Enter name to search"
          search_name = gets.chomp!
          for person in @people

            if person.name == search_name
              puts "Match!"
              puts "#{person.name}"
              puts "#{person.phone}"
              puts "#{person.address}"
              puts "#{person.position}"
              puts "#{person.slack}"
              puts "#{person.github}"
            else
              puts "#{search_name} not found"
            end
          end
        elsif choice == "D"
          puts "Enter name to delete"
          delete_name = gets.chomp
          for person in @people
            if person.name == delete_name
              puts "Got em"
              @people.delete(person)
            else
              puts "Person was not found."
            end
          end
        end
      end
 end
      end

menu = Menu.new()
menu.prompt
