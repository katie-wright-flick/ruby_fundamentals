begin
  gem 'minitest', '>= 5.15.0'
  require 'minitest/autorun'
  require_relative '../exercises/calling_and_declaring_methods'
rescue Gem::LoadError => e
  puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"
  puts 'Minitest 5.0 gem must be installed for the Ruby track.'
end

STRING_ARG = "the quick brown fox jumped over the lazy dog"

class MakingMethodsTest < Minitest::Test
  # ADD ARGUMENTS TO EXISTING METHODS
  def test_update_declaration_of_replace_fox_to_take_an_argument
    assert_equal "the quick brown hippo jumped over the lazy dog", MakingMethods.replace_fox(STRING_ARG)
  end

  def test_update_declaration_of_replace_dog_to_take_two_arguments
    assert_equal "the quick brown fox jumped over the lazy crocodile", MakingMethods.replace_dog(STRING_ARG, 'crocodile')
  end

  # DECLARE new methods
  def test_create_a_method_called_reverse_string    
    assert_equal "god yzal eht revo depmuj xof nworb kciuq eht", MakingMethods.reverse_string
  end

  def test_create_a_method_called_reverse_updated_string    
    assert_equal "elidocorc yzal eht revo depmuj oppih nworb kciuq eht", MakingMethods.reverse_updated_string
  end

  # CALL declared methods
  def test_call_replace_dog_from_method_named_calls_replace_dog
    assert_equal "the quick brown fox jumped over the lazy crocodile", MakingMethods.calls_replace_dog
  end

  def test_call_replace_fox_from_method_named_calls_replace_fox
    assert_equal "the quick brown hippo jumped over the lazy dog", MakingMethods.calls_replace_fox
  end

  # UPDATE EXISTING STRING

  def test_pass_arguments_to_method_calls_in_update_string
    assert_equal "the quick brown hippo jumped over the lazy crocodile", MakingMethods.update_string
  end

  # TESTING GUARD CLAUSES

  def test_string_exists
    assert_equal "No string found!", MakingMethods.replace_fox('')
  end

  def test_animal_exists
    assert_equal "No animals found!", MakingMethods.replace_dog(STRING_ARG, '')
  end

  def test_string_for_foxes
    new_string = # make your own string here
    assert_equal "No foxes found!", MakingMethods.replace_fox(new_string)
  end

  def test_string_for_dogs
    new_string = # make your own string here
    assert_equal "No dogs found!", MakingMethods.replace_dog(new_string, 'crocodile')
  end
end