# In Javascript we refer to chunks of code that as a 'function'.
# In Ruby, we refer to functions as 'methods'. Functions and methods are the same thing, but when working in ruby-land, it is important to use the correct language when describing your code.

# A method is declared with the 'def' keyword. When you are asked where a method is declared, we are referring methods starting with def:
def upcase_a_string
    'word'.updcase
end

# We refer to 'calling' a method, which is when we use the function:

upcase_a_string
# => 'WORD'

# Methods can take arguments, where you can pass information to the method in order to perform an operation, some logic, perhaps throw an error etc.

def upcase_a_string(arg)
    arg.upcase
end

upcase_a_string('katie')
# => 'KATIE'

# a method argument can be named anything we want, but as good developers we always want to name our arguments something descriptive so that new developers understand what a method expects as an argument:

# The method below is confusing - does the method upcase_a_string take a string or a boolean? 
# Don't do:
def upcase_a_string(boolean)
    boolean.upcase
end

upcase_a_string('katie')
# => 'KATIE'
upcase_a_string(true)
# => ERROR! Can't call 'upcase' on a boolean

# Do:
def upcase_a_string(string)
    string.upcase
end

upcase_a_string('katie')
# => 'KATIE'

# A boolean could still be entered to this method and cause an error, but we can prevent this with 'guard clause'

def upcase_a_string(string)
    # exit the method if the TYPE of argument we have passed is not a String
    return unless string.is_a? String
    # make sure that the string is not empty
    return if string.empty?

    string.upcase
end

upcase_a_string(123)
# => nil
upcase_a_string('')
# => nil
upcase_a_string(true)
# => nil
upcase_a_string('katie')
# => 'KATIE'

# The order of these guard clauses is important. If we checked that the argument wasn't empty before we checked it WAS a string, we could get an error. This is because you can't call '.empty?' on boolean or integer types.