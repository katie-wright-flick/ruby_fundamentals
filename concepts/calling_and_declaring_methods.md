In Javascript we refer to chunks of code that as a '**function**'.
In Ruby, we refer to **functions** as '**methods**'. **Functions** and **methods** are the same thing, but when working in ruby-land, it is important to use the correct language when describing your code.

A **method** is declared with the '*def*' keyword. When you are asked where a **method** is declared, we are referring **methods** starting with *def*:
```ruby
def upcase_a_string
    'word'.upcase
end
```

We refer to '*calling*' a **method**, which is when we use the function:
```ruby
upcase_a_string
# => 'WORD'
```

**Methods** can take *arguments*, where you can pass information to the **method** in order to perform an operation or some logic on it.
```ruby
def upcase_a_string(arg)
    arg.upcase
end

# calling the upcase_a_string method and passing an argument of 'katie'
upcase_a_string('katie')
# => "KATIE"
```

A **methods** *argument* can be named anything we want, but as good developers we always want to name our *arguments* something descriptive so that new developers understand what a **method** expects as an *argument*:

The **method** below is confusing - does the **method** `upcase_a_string` take a string or a boolean? 
```ruby
# Don't do:

def upcase_a_string(boolean)
    boolean.upcase
end

upcase_a_string('katie')
# => 'KATIE'

upcase_a_string(true)
# => ERROR! Can't call 'upcase' on a boolean
```

```ruby
# Don't do:
def upcase_a_string(here_is_my_argument_name)
    here_is_my_argument_name.upcase
end

upcase_a_string('katie')
# => 'KATIE'

# While the above will work, long and vague argument names are also not a great practise. Clarity is key

# Do:
def upcase_a_string(string)
    string.upcase
end

upcase_a_string('katie')
# => 'KATIE'
```
A boolean could still be entered to this **method** and cause an error, but we can prevent this with a '**guard clause**'.

A **guard clause ** performs some kind of check on our code, and exits a function _before_ we reach the code that might throw an error.


```ruby
def upcase_a_string(string)
    # exit the method UNLESS the TYPE of argument we have passed is a String
    return unless string.is_a? String
    # exit the method IF the string is empty
    return "No string provided!" if string.empty?

    string.upcase
end

upcase_a_string(123)
# => nil
upcase_a_string('')
# => "No string provided!"
upcase_a_string(true)
# => nil
upcase_a_string('katie')
# => 'KATIE'
```

The order of these **guard clauses** is important. If we checked that the *argument* wasn't empty before we checked it WAS a string, we could get an error. This is because you can't call '.empty?' on boolean or integer types.

Things to check:
- Do you know the difference between declaring a method, and calling a method?
- Do you understand the purpose of a guard clause?
- Do you understand why we need clear names for arguments? 
