class MakingMethods
  class << self
  STRING_ARG = "the quick brown fox jumped over the lazy dog"

  def update_string
      new_string = replace_fox(STRING_ARG)
      new_string = replace_dog

      new_string
  end
  
  def replace_fox 
    # Add a guard clause here that checks that the string exists
    # Add a guard clause here that checks that the string contains the word 'fox' (string.include?('fox'))

    string.gsub('fox', 'hippo')
  end

  def replace_dog
      # Add a guard clause here that checks that the string exists
      # Add a guard clause here that checks that the animal exists
      # Add a guard clause here that checks that the string contains the word 'dog' (string.include?('dog'))

      string.gsub('dog', animal)
  end

  def calls_replace_dog
    # call replace_dog
  end

  def calls_replace_fox
    # call replace_fox
  end

  # declare your new methods here
end
