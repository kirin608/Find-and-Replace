# Create a script where a user can find and replace words in a string. 
# The method in action will look something like "Hello world".find_and_replace("world", "universe").
#  The result of would be "Hello universe".

# Do first: Write the method so that it replaces whole words only, 
# as in the "hello world" example above. Make sure all your tests pass.

# Do second: Add to your method so that your method takes into account partial matches. 
# For example "I am walking my cat to the cathedral".find_and_replace("cat", "dog")
#  would return the silly phrase "I am walking my dog to the doghedral."

# Extra credit: Refactor your application so that it works with a .txt file. 
# You can use Ruby’s File.open() method to open a file and then perform operations on it.


def get_user_input
    print 'Enter the word that needs to be replace <space> word replace with: '
    gets.chomp.downcase  
end

def get_player_text
    File.read('./text.txt') 
end 

def find_and_replace (words_input = get_user_input())
    words_input = words_input.split(' ')
    #  words_input[0]- original   words_input[1]- new
    text =  get_player_text.gsub(words_input[0],words_input[1])
    File.open("./text.txt", "w") { |file| file << text }  
    text_capital =  get_player_text.gsub(words_input[0].capitalize,words_input[1].capitalize)
    File.open("./text.txt", "w") { |file| file << text_capital }
    p File.read('./text.txt')
end
